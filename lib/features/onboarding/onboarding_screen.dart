import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/core/plant_mock_data.dart';
import 'package:smartvase/services/providers.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Plant'),
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Choose your plant',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Select the plant you want to grow in your SmartVase.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              ...PlantMockData.plants.map((plant) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.local_florist, color: Colors.green),
                    ),
                    title: Text(
                      plant.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Soil: ${plant.soilDryThreshold}, Light: ${plant.lightThreshold}',
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () => _onPlantSelected(context, ref, plant),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  void _onPlantSelected(BuildContext context, WidgetRef ref, MockPlant plant) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Configure SmartVase'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Selected plant: ${plant.name}'),
            const SizedBox(height: 16),
            const Text(
              'The system will configure the pot for this specific plant.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).pop();
              await _configurePlant(context, ref, plant);
            },
            child: const Text('Configure'),
          ),
        ],
      ),
    );
  }

  Future<void> _configurePlant(BuildContext context, WidgetRef ref, MockPlant plant) async {
    try {
      final config = {
        'soil_dry_threshold': plant.soilDryThreshold,
        'light_threshold': plant.lightThreshold,
      };
      
      final firestoreService = ref.read(firestoreServiceProvider);
      await firestoreService.writePlantConfig(config);
      
      if (context.mounted) {
        context.go('/dashboard');
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error configuring plant: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
