/// Application constants
class AppConstants {
  /// Device ID - can be configured via environment or static config
  static const String deviceId = 'HUB_123456';
  
  /// Firestore collection paths
  static const String collectionSmartvase = 'smartvase';
  
  /// Document paths
  static String telemetryPath(String deviceId) => 
      '$collectionSmartvase/$deviceId/telemetry/telemetry';
  
  static String visionResultPath(String deviceId) => 
      '$collectionSmartvase/$deviceId/vision/result';
  
  static String commandAckPath(String deviceId) => 
      '$collectionSmartvase/$deviceId/command/ack';
  
  static String commandConfigPath(String deviceId) => 
      '$collectionSmartvase/$deviceId/command/config';
  
  static String alarmPath(String deviceId) => 
      '$collectionSmartvase/$deviceId/alarm';
}
