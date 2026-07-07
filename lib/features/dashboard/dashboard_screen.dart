import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/models/models.dart';
import 'package:smartvase/services/command_handler.dart';
import 'package:smartvase/services/providers.dart';

/// Dashboard screen with simplified telemetry display and command panel
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final telemetryAsync = ref.watch(telemetryStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SmartVase'),
      ),
      body: telemetryAsync.when(
        data: (telemetry) => _buildDashboard(context, telemetry),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }

  Widget _buildDashboard(BuildContext context, Telemetry telemetry) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Environment & Care'),
            const SizedBox(height: 12),
            _buildEnvironmentGrid(telemetry),
            const SizedBox(height: 24),
            _buildSectionHeader('Commands'),
            const SizedBox(height: 12),
            _buildCommandPanel(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildEnvironmentGrid(Telemetry telemetry) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.3,
      children: [
        _buildTelemetryCard(
          'Soil Moisture',
          telemetry.soilMoisture != null 
              ? '${telemetry.soilMoisture}%'
              : 'N/A',
          Icons.water_drop,
          telemetry.soilMoisture != null 
              ? _getSoilMoistureColor(telemetry.soilMoisture!)
              : Colors.grey,
        ),
        _buildTelemetryCard(
          'Water Level',
          telemetry.waterLevelCm != null
              ? '${_getWaterLevelPercentage(telemetry.waterLevelCm!)}%'
              : 'N/A',
          Icons.opacity,
          telemetry.waterLevelCm != null
              ? _getWaterLevelColor(telemetry.waterLevelCm!)
              : Colors.grey,
        ),
        _buildTelemetryCard(
          'Temperature',
          telemetry.temperatureC != null 
              ? '${telemetry.temperatureC}°C'
              : 'N/A',
          Icons.thermostat,
          Colors.red,
        ),
        _buildTelemetryCard(
          'Humidity',
          telemetry.humidityPercent != null 
              ? '${telemetry.humidityPercent}%'
              : 'N/A',
          Icons.water,
          Colors.blue,
        ),
        _buildTelemetryCard(
          'Light',
          telemetry.lux != null
              ? '${telemetry.lux} lux'
              : 'N/A',
          Icons.light_mode,
          Colors.orange,
        ),
      ],
    );
  }

  Widget _buildTelemetryCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 36),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommandPanel(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Operating Mode',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _ModeButtons(),
            const SizedBox(height: 16),
            const Text(
              'Manual Irrigation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _WaterButton(),
          ],
        ),
      ),
    );
  }

  int _getWaterLevelPercentage(double cm) {
    // Assuming 30cm = 100%, 0cm = 0%
    final percentage = (cm / 30 * 100).round();
    return percentage.clamp(0, 100);
  }

  Color _getWaterLevelColor(double cm) {
    final percentage = _getWaterLevelPercentage(cm);
    if (percentage < 20) return Colors.red;
    if (percentage < 50) return Colors.orange;
    return Colors.green;
  }

  Color _getSoilMoistureColor(int moisture) {
    if (moisture < 20) return Colors.red;
    if (moisture < 40) return Colors.orange;
    return Colors.green;
  }
}

/// Mode selection buttons with ACK logic
class _ModeButtons extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commandHandler = ref.watch(commandHandlerProvider);

    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: commandHandler == CommandExecutionState.loading
                ? null
                : () => _executeSetMode(context, ref, OperatingMode.idle),
            icon: commandHandler == CommandExecutionState.loading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.pause),
            label: const Text('IDLE'),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: commandHandler == CommandExecutionState.loading
                ? null
                : () => _executeSetMode(context, ref, OperatingMode.light),
            icon: commandHandler == CommandExecutionState.loading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.light_mode),
            label: const Text('LIGHT'),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: commandHandler == CommandExecutionState.loading
                ? null
                : () => _executeSetMode(context, ref, OperatingMode.shadow),
            icon: commandHandler == CommandExecutionState.loading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.nights_stay),
            label: const Text('SHADOW'),
          ),
        ),
      ],
    );
  }

  Future<void> _executeSetMode(
    BuildContext context,
    WidgetRef ref,
    OperatingMode mode,
  ) async {
    final handler = ref.read(commandHandlerProvider.notifier);
    final service = ref.read(firestoreServiceProvider);

    final error = await handler.executeCommand(
      () => service.writeSetModeCommand(SetModeCommand(mode: mode)),
    );

    if (error == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Mode set to ${mode.name}'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $error'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}

/// Water button with ACK logic
class _WaterButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commandHandler = ref.watch(commandHandlerProvider);

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: commandHandler == CommandExecutionState.loading
            ? null
            : () => _showWaterDialog(context, ref),
        icon: commandHandler == CommandExecutionState.loading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Icon(Icons.water_drop),
        label: const Text('Manual irrigation'),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }

  Future<void> _showWaterDialog(BuildContext context, WidgetRef ref) async {
    final duration = await showDialog<int>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Seleziona durata'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.timer),
              title: const Text('2 secondi'),
              onTap: () => Navigator.pop(context, 2000),
            ),
            ListTile(
              leading: const Icon(Icons.timer),
              title: const Text('5 secondi'),
              onTap: () => Navigator.pop(context, 5000),
            ),
            ListTile(
              leading: const Icon(Icons.timer),
              title: const Text('10 secondi'),
              onTap: () => Navigator.pop(context, 10000),
            ),
          ],
        ),
      ),
    );

    if (duration != null && context.mounted) {
      _executeWater(context, ref, duration);
    }
  }

  Future<void> _executeWater(BuildContext context, WidgetRef ref, int durationMs) async {
    final handler = ref.read(commandHandlerProvider.notifier);
    final service = ref.read(firestoreServiceProvider);

    final error = await handler.executeCommand(
      () => service.writeWaterCommand(WaterCommand(durationMs: durationMs)),
    );

    if (error == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Irrigazione avviata per ${durationMs / 1000} secondi'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $error'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
