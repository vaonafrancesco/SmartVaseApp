import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/core/constants.dart';
import 'package:smartvase/models/models.dart';
import 'package:smartvase/services/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Provider for Firebase initialization
final firebaseProvider = Provider<FirebaseApp>((ref) {
  throw UnimplementedError('Firebase must be initialized in main()');
});

/// Provider for Firestore instance
final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

/// Provider for device ID (can be overridden for testing)
final deviceIdProvider = Provider<String>((ref) {
  return AppConstants.deviceId;
});

// Provider che gestisce il ciclo di login anonimo automatico
final autoLoginProvider = FutureProvider<User?>((ref) async {
  final auth = FirebaseAuth.instance;
  
  // Se l'utente ha già una sessione attiva (es. ha riaperto l'app), la riutilizziamo
  if (auth.currentUser != null) {
    return auth.currentUser;
  }
  
  // Altrimenti eseguiamo il login anonimo autonomo verso il cloud
  final userCredential = await auth.signInAnonymously();
  return userCredential.user;
});

/// Provider for FirestoreService
final firestoreServiceProvider = Provider<FirestoreService>((ref) {
  final firestore = ref.watch(firestoreProvider);
  final deviceId = ref.watch(deviceIdProvider);
  return FirestoreService(
    firestore: firestore,
    deviceId: deviceId,
  );
});

/// Provider for telemetry stream
final telemetryStreamProvider = StreamProvider<Telemetry>((ref) {
  final service = ref.watch(firestoreServiceProvider);
  return service.getTelemetryStream();
});

/// Provider for vision result stream
final visionResultStreamProvider = StreamProvider<VisionResult>((ref) {
  final service = ref.watch(firestoreServiceProvider);
  return service.getVisionResultStream();
});

/// Provider for alarm stream
final alarmStreamProvider = StreamProvider<Alarm>((ref) {
  final service = ref.watch(firestoreServiceProvider);
  return service.getAlarmStream();
});

/// Provider for command ACK stream
final commandAckStreamProvider = StreamProvider<CommandAck>((ref) {
  final service = ref.watch(firestoreServiceProvider);
  return service.getCommandAckStream();
});
