import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smartvase/core/constants.dart';
import 'package:smartvase/models/models.dart';

/// Firestore service for interacting with SmartVase data
class FirestoreService {
  final FirebaseFirestore _firestore;
  final String deviceId;

  FirestoreService({
    required FirebaseFirestore firestore,
    String? deviceId,
  })  : _firestore = firestore,
        deviceId = deviceId ?? AppConstants.deviceId;

  /// Stream telemetry data in real-time
  Stream<Telemetry> getTelemetryStream() {
    return _firestore
        .doc(AppConstants.telemetryPath(deviceId))
        .snapshots()
        .map((snapshot) {
      if (!snapshot.exists) {
        throw Exception('Telemetry document does not exist');
      }
      return Telemetry.fromJson(snapshot.data()!);
    });
  }

  /// Stream vision result data in real-time
  Stream<VisionResult> getVisionResultStream() {
    return _firestore
        .doc(AppConstants.visionLatestPath(AppConstants.camDeviceId))
        .snapshots()
        .map((snapshot) {
      if (!snapshot.exists) {
        throw Exception('Vision result document does not exist');
      }
      return VisionResult.fromJson(snapshot.data()!);
    });
  }

  /// Stream alarm data in real-time
  Stream<Alarm> getAlarmStream() {
    return _firestore
        .doc(AppConstants.alarmPath(deviceId))
        .snapshots()
        .map((snapshot) {
      if (!snapshot.exists) {
        throw Exception('Alarm document does not exist');
      }
      return Alarm.fromJson(snapshot.data()!);
    });
  }

  /// Stream command ACK data in real-time
  Stream<CommandAck> getCommandAckStream() {
    return _firestore
        .doc(AppConstants.commandAckPath(deviceId))
        .snapshots()
        .where((snapshot) => snapshot.exists)
        .map((snapshot) => CommandAck.fromJson(snapshot.data()!));
  }

  /// Write command config to Firestore
  Future<void> writeCommandConfig(CommandConfig config) async {
    await _firestore
        .doc(AppConstants.commandConfigPath(deviceId))
        .set({
          'soil_dry_threshold': config.targetSoilMoisture,
          'light_threshold': config.minLux,
        });
  }

  /// Write water command to Firestore
  Future<void> writeWaterCommand(WaterCommand command) async {
    await _firestore
        .doc('${AppConstants.collectionSmartvase}/$deviceId/command/water')
        .set({
          'cmd_id': 101,
          'type': 'water',
          'duration_ms': command.durationMs,
        });
  }

  /// Write plant config to Firestore
  Future<void> writePlantConfig(Map<String, int> config) async {
    await _firestore
        .doc('${AppConstants.collectionSmartvase}/$deviceId/command/config')
        .set(config);
  }

  /// Write set mode command to Firestore
  Future<void> writeSetModeCommand(SetModeCommand command) async {
    await _firestore
        .doc('${AppConstants.collectionSmartvase}/$deviceId/command/setMode')
        .set({
          'cmd_id': 102,
          'type': 'setMode',
          'mode': command.mode.name.toUpperCase(),
        });
  }

  /// Get current telemetry snapshot (one-time read)
  Future<Telemetry?> getTelemetryOnce() async {
    final snapshot = await _firestore
        .doc(AppConstants.telemetryPath(deviceId))
        .get();
    if (!snapshot.exists) return null;
    return Telemetry.fromJson(snapshot.data()!);
  }

  /// Get current vision result snapshot (one-time read)
  Future<VisionResult?> getVisionResultOnce() async {
    final snapshot = await _firestore
        .doc(AppConstants.visionLatestPath(AppConstants.camDeviceId))
        .get();
    if (!snapshot.exists) return null;
    return VisionResult.fromJson(snapshot.data()!);
  }

  /// Write vision capture command to Firestore
  Future<void> writeVisionCaptureCommand(Map<String, dynamic> command) async {
    await _firestore
        .doc(AppConstants.visionCaptureCommandPath(AppConstants.camDeviceId))
        .set(command);
  }

  /// Get current alarm snapshot (one-time read)
  Future<Alarm?> getAlarmOnce() async {
    final snapshot = await _firestore
        .doc(AppConstants.alarmPath(deviceId))
        .get();
    if (!snapshot.exists) return null;
    return Alarm.fromJson(snapshot.data()!);
  }
}
