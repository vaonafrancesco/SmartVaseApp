import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/models/models.dart';
import 'package:smartvase/services/providers.dart';

/// Global alarm listener widget
class AlarmListener extends ConsumerStatefulWidget {
  final Widget child;

  const AlarmListener({super.key, required this.child});

  @override
  ConsumerState<AlarmListener> createState() => _AlarmListenerState();
}

class _AlarmListenerState extends ConsumerState<AlarmListener> {
  Alarm? _lastAlarm;
  bool _isDialogVisible = false;

  @override
  Widget build(BuildContext context) {
    ref.listen(alarmStreamProvider, (previous, next) {
      next.when(
        data: (alarm) => _handleAlarm(alarm),
        loading: () {},
        error: (error, stack) {},
      );
    });

    return widget.child;
  }

  void _handleAlarm(Alarm alarm) {
    // Check if this is a new critical alarm
    if (_isCriticalAlarm(alarm) && _isNewAlarm(alarm)) {
      _lastAlarm = alarm;
      _showCriticalAlarmDialog(alarm);
    }
  }

  bool _isCriticalAlarm(Alarm alarm) {
    final criticalEvents = [
      'Hub Missing',
      'Water level critical',
      'Battery critical',
      'Connection lost',
      'System failure',
    ];

    return criticalEvents.any((event) =>
        alarm.event.toLowerCase().contains(event.toLowerCase()) ||
        alarm.level.toLowerCase() == 'critical');
  }

  bool _isNewAlarm(Alarm alarm) {
    if (_lastAlarm == null) return true;
    return alarm.timestampUtc != _lastAlarm!.timestampUtc ||
        alarm.event != _lastAlarm!.event;
  }

  void _showCriticalAlarmDialog(Alarm alarm) {
    if (_isDialogVisible) return;

    _isDialogVisible = true;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.warning, color: Colors.red, size: 32),
            const SizedBox(width: 12),
            const Text('Critical Alert'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              alarm.event,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Level: ${alarm.level}',
              style: TextStyle(
                color: _getAlarmLevelColor(alarm.level),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Time: ${DateTime.fromMillisecondsSinceEpoch(alarm.timestampUtc * 1000)}',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const Text(
              'The system is operating in degraded mode. Please address the issue immediately.',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              _isDialogVisible = false;
              Navigator.of(context).pop();
            },
            child: const Text('Acknowledge'),
          ),
        ],
      ),
    ).then((_) {
      _isDialogVisible = false;
    });
  }

  Color _getAlarmLevelColor(String level) {
    switch (level.toLowerCase()) {
      case 'critical':
        return Colors.red;
      case 'warning':
        return Colors.orange;
      case 'info':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}
