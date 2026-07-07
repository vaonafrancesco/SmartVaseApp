import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/models/models.dart';
import 'package:smartvase/services/providers.dart';
import 'package:go_router/go_router.dart';

class StorageImageWidget extends StatefulWidget {
  final String url;
  const StorageImageWidget({super.key, required this.url});

  @override
  State<StorageImageWidget> createState() => _StorageImageWidgetState();
}

class _StorageImageWidgetState extends State<StorageImageWidget> {
  String? _resolvedUrl;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _resolveUrl();
  }

  @override
  void didUpdateWidget(StorageImageWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.url != widget.url) {
      _resolveUrl();
    }
  }

  Future<void> _resolveUrl() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });
    
    try {
      if (widget.url.startsWith('gs://')) {
        final ref = FirebaseStorage.instance.refFromURL(widget.url);
        final downloadUrl = await ref.getDownloadURL();
        if (mounted) {
          setState(() {
            _resolvedUrl = downloadUrl;
            _isLoading = false;
          });
        }
      } else {
        setState(() {
          _resolvedUrl = widget.url;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SizedBox(
        height: 300,
        child: Center(child: CircularProgressIndicator()),
      );
    }
    
    if (_error != null || _resolvedUrl == null) {
      return const SizedBox(
        height: 300,
        child: Center(child: Icon(Icons.error, color: Colors.red)),
      );
    }

    return CachedNetworkImage(
      imageUrl: _resolvedUrl!,
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
    );
  }
}

/// Vision screen with capture functionality
class VisionScreen extends ConsumerStatefulWidget {
  const VisionScreen({super.key});

  @override
  ConsumerState<VisionScreen> createState() => _VisionScreenState();
}

class _VisionScreenState extends ConsumerState<VisionScreen> {
  @override
  Widget build(BuildContext context) {
    final visionAsync = ref.watch(visionResultStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vision'),
      ),
      body: visionAsync.when(
        data: (visionResult) => _buildVisionContent(context, visionResult),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
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
                        child: StorageImageWidget(url: visionResult.imageUrl!),
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
