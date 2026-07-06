import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/models/models.dart';
import 'package:smartvase/services/providers.dart';

/// Settings screen with configuration form
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _plantApiIdController = TextEditingController();
  final _minLuxController = TextEditingController();
  final _maxLuxController = TextEditingController();
  final _targetSoilMoistureController = TextEditingController();
  bool _isSaving = false;

  @override
  void dispose() {
    _plantApiIdController.dispose();
    _minLuxController.dispose();
    _maxLuxController.dispose();
    _targetSoilMoistureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Configuration',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: _plantApiIdController,
                        decoration: const InputDecoration(
                          labelText: 'Plant API ID',
                          hintText: 'Enter plant API ID',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a plant API ID';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _minLuxController,
                        decoration: const InputDecoration(
                          labelText: 'Min Lux',
                          hintText: 'Minimum light threshold',
                          border: OutlineInputBorder(),
                          suffixText: 'lux',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter minimum lux';
                          }
                          final lux = int.tryParse(value);
                          if (lux == null || lux < 0) {
                            return 'Please enter a valid positive number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _maxLuxController,
                        decoration: const InputDecoration(
                          labelText: 'Max Lux',
                          hintText: 'Maximum light threshold',
                          border: OutlineInputBorder(),
                          suffixText: 'lux',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter maximum lux';
                          }
                          final lux = int.tryParse(value);
                          if (lux == null || lux < 0) {
                            return 'Please enter a valid positive number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _targetSoilMoistureController,
                        decoration: const InputDecoration(
                          labelText: 'Target Soil Moisture',
                          hintText: 'Target soil moisture percentage',
                          border: OutlineInputBorder(),
                          suffixText: '%',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter target soil moisture';
                          }
                          final moisture = int.tryParse(value);
                          if (moisture == null || moisture < 0 || moisture > 100) {
                            return 'Please enter a value between 0 and 100';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _isSaving ? null : _saveConfiguration,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child: _isSaving
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(strokeWidth: 2),
                                )
                              : const Text('Save Configuration'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveConfiguration() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isSaving = true;
    });

    try {
      final service = ref.read(firestoreServiceProvider);
      final config = CommandConfig(
        plantApiId: _plantApiIdController.text.trim(),
        minLux: int.parse(_minLuxController.text),
        maxLux: int.parse(_maxLuxController.text),
        targetSoilMoisture: int.parse(_targetSoilMoistureController.text),
      );

      await service.writeCommandConfig(config);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Configuration saved successfully'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error saving configuration: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }
}
