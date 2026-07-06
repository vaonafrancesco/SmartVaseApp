import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/models/models.dart';
import 'package:smartvase/services/providers.dart';

/// Vision & Diagnostics screen
class VisionScreen extends ConsumerWidget {
  const VisionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visionAsync = ref.watch(visionResultStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vision & Diagnostics'),
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
    return SingleChildScrollView(
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: visionResult.imageUrl,
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
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Analysis chips
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Analysis Results',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildChip(
                        'Frame Quality: ${_getFrameQualityText(visionResult.frameQuality)}',
                        _getFrameQualityColor(visionResult.frameQuality),
                      ),
                      _buildChip(
                        'Leaf Health: ${_getLeafHealthText(visionResult.leafHealth)}',
                        _getLeafHealthColor(visionResult.leafHealth),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Expandable metrics section
          Card(
            elevation: 2,
            child: ExpansionTile(
              title: const Text(
                'Raw Metrics',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMetricRow('Schema Version', '${visionResult.schemaVersion}'),
                      _buildMetricRow('Model Version', visionResult.modelVersion),
                      _buildMetricRow('Timestamp', DateTime.fromMillisecondsSinceEpoch(visionResult.timestampUtc * 1000).toString()),
                      if (visionResult.metrics != null) ...[
                        const SizedBox(height: 8),
                        const Text(
                          'Metrics:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        ...visionResult.metrics!.entries.map((entry) =>
                          _buildMetricRow(entry.key, entry.value.toString()),
                        ),
                      ],
                      if (visionResult.recommendations != null) ...[
                        const SizedBox(height: 8),
                        const Text(
                          'Recommendations:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        ...visionResult.recommendations!.entries.map((entry) =>
                          _buildMetricRow(entry.key, entry.value.toString()),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      label: Text(label),
      backgroundColor: color.withOpacity(0.2),
      labelStyle: TextStyle(color: color, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildMetricRow(String key, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            key,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(value),
        ],
      ),
    );
  }

  String _getFrameQualityText(FrameQuality quality) {
    switch (quality) {
      case FrameQuality.ok:
        return 'OK';
      case FrameQuality.tooDark:
        return 'Too Dark';
      case FrameQuality.tooBright:
        return 'Too Bright';
      case FrameQuality.blurry:
        return 'Blurry';
      case FrameQuality.occluded:
        return 'Occluded';
      case FrameQuality.unknown:
        return 'Unknown';
    }
  }

  Color _getFrameQualityColor(FrameQuality quality) {
    switch (quality) {
      case FrameQuality.ok:
        return Colors.green;
      case FrameQuality.tooDark:
        return Colors.blue;
      case FrameQuality.tooBright:
        return Colors.orange;
      case FrameQuality.blurry:
        return Colors.orange;
      case FrameQuality.occluded:
        return Colors.red;
      case FrameQuality.unknown:
        return Colors.grey;
    }
  }

  String _getLeafHealthText(LeafHealth health) {
    switch (health) {
      case LeafHealth.healthy:
        return 'Healthy';
      case LeafHealth.warning:
        return 'Warning';
      case LeafHealth.critical:
        return 'Critical';
      case LeafHealth.unknown:
        return 'Unknown';
    }
  }

  Color _getLeafHealthColor(LeafHealth health) {
    switch (health) {
      case LeafHealth.healthy:
        return Colors.green;
      case LeafHealth.warning:
        return Colors.orange;
      case LeafHealth.critical:
        return Colors.red;
      case LeafHealth.unknown:
        return Colors.grey;
    }
  }
}
