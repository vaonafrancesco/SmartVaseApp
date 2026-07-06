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
            _buildSectionHeader('Device Status'),
            const SizedBox(height: 12),
            _buildDeviceStatusGrid(telemetry),
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

  Widget _buildDeviceStatusGrid(Telemetry telemetry) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.3,
      children: [
        _buildBatteryCard(telemetry.batteryVoltage),
        _buildMovementCard(telemetry.movementState),
      ],
    );
  }

  Widget _buildBatteryCard(int? batteryVoltage) {
    final percentage = batteryVoltage != null 
        ? _getBatteryPercentage(batteryVoltage)
        : null;
    
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.battery_charging_full,
              color: batteryVoltage != null 
                  ? _getBatteryColor(batteryVoltage)
                  : Colors.grey,
              size: 36,
            ),
            const SizedBox(height: 8),
            const Text(
              'Battery',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            if (percentage != null)
              Text(
                '$percentage%',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
            else
              const Text(
                'N/A',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovementCard(MovementState? movementState) {
    final stateText = movementState != null
        ? _getMovementStateText(movementState)
        : 'Unknown';
    final stateColor = movementState != null
        ? _getMovementStateColor(movementState)
        : Colors.grey;
    
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.directions_walk,
              color: stateColor,
              size: 36,
            ),
            const SizedBox(height: 8),
            const Text(
              'Movement',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              stateText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: stateColor,
              ),
            ),
          ],
        ),
      ),
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

  int _getBatteryPercentage(int millivolts) {
    // Assuming 4200mV = 100%, 3200mV = 0%
    final percentage = ((millivolts - 3200) / (4200 - 3200) * 100).round();
    return percentage.clamp(0, 100);
  }

  int _getWaterLevelPercentage(double cm) {
    // Assuming 10cm = 100%, 0cm = 0%
    final percentage = (cm / 10 * 100).round();
    return percentage.clamp(0, 100);
  }

  Color _getBatteryColor(int millivolts) {
    final percentage = _getBatteryPercentage(millivolts);
    if (percentage < 20) return Colors.red;
    if (percentage < 50) return Colors.orange;
    return Colors.green;
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

  String _getMovementStateText(MovementState state) {
    switch (state) {
      case MovementState.idle:
        return 'Idle';
      case MovementState.moving:
        return 'Moving';
      case MovementState.stuck:
        return 'Stuck';
      case MovementState.unknown:
        return 'Unknown';
    }
  }

  Color _getMovementStateColor(MovementState state) {
    switch (state) {
      case MovementState.idle:
        return Colors.grey;
      case MovementState.moving:
        return Colors.green;
      case MovementState.stuck:
        return Colors.red;
      case MovementState.unknown:
        return Colors.orange;
    }
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
            : () => _executeWater(context, ref),
        icon: commandHandler == CommandExecutionState.loading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Icon(Icons.water_drop),
        label: const Text('Irrigation Manual'),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }

  Future<void> _executeWater(BuildContext context, WidgetRef ref) async {
    final handler = ref.read(commandHandlerProvider.notifier);
    final service = ref.read(firestoreServiceProvider);

    final error = await handler.executeCommand(
      () => service.writeWaterCommand(WaterCommand(durationMs: 5000)),
    );

    if (error == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Irrigation started'),
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
