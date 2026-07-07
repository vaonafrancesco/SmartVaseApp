import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/services/firestore_service.dart';
import 'package:smartvase/services/providers.dart';

/// Command execution state
enum CommandExecutionState {
  idle,
  loading,
  success,
  error,
}

/// Command handler for managing ACK logic
class CommandHandler extends StateNotifier<CommandExecutionState> {
  final FirestoreService _firestoreService;

  CommandHandler({
    required FirestoreService firestoreService,
  })  : _firestoreService = firestoreService,
        super(CommandExecutionState.idle);

  /// Execute a command and wait for ACK
  /// Returns the result (success/error) for UI to handle
  Future<String?> executeCommand(
    Future<void> Function() commandFunction,
  ) async {
    state = CommandExecutionState.loading;

    StreamSubscription? subscription;
    Completer<String?> completer = Completer();

    try {
      // Execute the command
      await commandFunction();

      // Bypass ACK logic for now since the remote server doesn't support it
      state = CommandExecutionState.success;
      completer.complete(null);
      
      // Reset to idle after a delay
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          state = CommandExecutionState.idle;
        }
      });

      return completer.future;
    } catch (e) {
      state = CommandExecutionState.error;
      return 'Error executing command: $e';
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}

/// Provider for command handler - scoped to each widget that needs it
final commandHandlerProvider = StateNotifierProvider<CommandHandler, CommandExecutionState>(
  (ref) {
    final firestoreService = ref.watch(firestoreServiceProvider);
    return CommandHandler(
      firestoreService: firestoreService,
    );
  },
);
