import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/models/models.dart';
import 'package:smartvase/services/providers.dart';
import 'package:go_router/go_router.dart';

/// Vision screen with capture functionality
class VisionScreen extends ConsumerStatefulWidget {
  const VisionScreen({super.key});

  @override
  ConsumerState<VisionScreen> createState() => _VisionScreenState();
}

class _VisionScreenState extends ConsumerState<VisionScreen> {
  bool _isCapturing = false;
  int? _captureTimestamp;
  Timer? _timeoutTimer;
  StreamSubscription<VisionResult>? _visionSubscription;

  @override
  void dispose() {
    _timeoutTimer?.cancel();
    _visionSubscription?.cancel();
    super.dispose();
  }

  Future<void> _captureImage() async {
    final now = DateTime.now();
    final timestamp = now.millisecondsSinceEpoch;
    final timestampUtc = now.millisecondsSinceEpoch ~/ 1000;

    setState(() {
      _isCapturing = true;
      _captureTimestamp = timestampUtc;
    });

    // Write capture command to Firestore
    final command = {
      'cmd_id': timestamp,
      'timestamp_utc': timestampUtc,
      'type': 'request_capture',
    };

    try {
      final firestoreService = ref.read(firestoreServiceProvider);
      await firestoreService.writeVisionCaptureCommand(command);

      // Start timeout timer
      _timeoutTimer?.cancel();
      _timeoutTimer = Timer(const Duration(seconds: 60), () {
        if (mounted && _isCapturing) {
          setState(() {
            _isCapturing = false;
            _captureTimestamp = null;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Timeout: No new photo received in 60 seconds'),
              backgroundColor: Colors.red,
            ),
          );
        }
      });

      // Listen for new vision result
      _visionSubscription?.cancel();
      _visionSubscription = firestoreService.getVisionResultStream().listen(
        (visionResult) {
          if (mounted && _isCapturing && _captureTimestamp != null && visionResult.timestampUtc != null) {
            if (visionResult.timestampUtc! > _captureTimestamp!) {
              setState(() {
                _isCapturing = false;
                _captureTimestamp = null;
              });
              _timeoutTimer?.cancel();
            }
          }
        },
        onError: (error) {
          if (mounted && _isCapturing) {
            setState(() {
              _isCapturing = false;
              _captureTimestamp = null;
            });
            _timeoutTimer?.cancel();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: $error'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
      );
    } catch (e) {
      if (mounted) {
        setState(() {
          _isCapturing = false;
          _captureTimestamp = null;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error capturing image: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final visionAsync = ref.watch(visionResultStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vision'),
      ),
      body: Stack(
        children: [
          visionAsync.when(
            data: (visionResult) => _buildVisionContent(context, visionResult),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(
              child: Text('Error: $error'),
            ),
          ),
          if (_isCapturing)
            Container(
              color: Colors.black54,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(color: Colors.white),
                    SizedBox(height: 16),
                    Text(
                      'Acquisizione e analisi fogliare in corso...',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildVisionContent(BuildContext context, VisionResult visionResult) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image display
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Latest Image',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    if (visionResult.imageUrl != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: visionResult.imageUrl!,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const SizedBox(
                            height: 300,
                            child: Center(child: CircularProgressIndicator()),
                          ),
                          errorWidget: (context, url, error) => const SizedBox(
                            height: 300,
                            child: Center(child: Icon(Icons.error)),
                          ),
                        ),
                      )
                    else
                      const SizedBox(
                        height: 300,
                        child: Center(child: Text('No image available')),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Status message
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Status',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      visionResult.statusMessage ?? 'No status message',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Botanical metrics
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Botanical Metrics',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        if (visionResult.foliageCoverage != null)
                          _buildMetricChip(
                            'Foliage: ${(visionResult.foliageCoverage! * 100).toStringAsFixed(0)}%',
                            Colors.green,
                          ),
                        if (visionResult.greenRatio != null)
                          _buildMetricChip(
                            'Green: ${(visionResult.greenRatio! * 100).toStringAsFixed(0)}%',
                            Colors.lightGreen,
                          ),
                        if (visionResult.brownRatio != null)
                          _buildMetricChip(
                            'Brown: ${(visionResult.brownRatio! * 100).toStringAsFixed(0)}%',
                            Colors.brown,
                          ),
                        _buildHealthChip(visionResult.plantHealthy ?? PlantHealth.unknown),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Capture button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _isCapturing ? null : _captureImage,
                icon: const Icon(Icons.camera_alt),
                label: const Text('GRAB'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 12),
            // History button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () => context.go('/vision/history'),
                icon: const Icon(Icons.history),
                label: const Text('Visualizza Storico'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricChip(String label, Color color) {
    return Chip(
      label: Text(label),
      backgroundColor: color.withOpacity(0.2),
      labelStyle: TextStyle(color: color, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildHealthChip(PlantHealth health) {
    String label;
    Color color;
    
    switch (health) {
      case PlantHealth.healthy:
        label = 'Healthy';
        color = Colors.green;
        break;
      case PlantHealth.warning:
        label = 'Warning';
        color = Colors.orange;
        break;
      case PlantHealth.critical:
        label = 'Critical';
        color = Colors.red;
        break;
      case PlantHealth.unknown:
        label = 'Unknown';
        color = Colors.grey;
        break;
    }
    
    return Chip(
      label: Text(label),
      backgroundColor: color.withOpacity(0.2),
      labelStyle: TextStyle(color: color, fontWeight: FontWeight.bold),
    );
  }
}
