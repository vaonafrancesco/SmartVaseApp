import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartvase/core/router.dart';
import 'firebase_options.dart';
import 'package:smartvase/services/providers.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inizializzazione ufficiale di Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    // ProviderScope è fondamentale per far funzionare Riverpod
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Leggiamo lo stato del provider di login automatico
    final authState = ref.watch(autoLoginProvider);

    return MaterialApp.router(
      title: 'SmartVase',
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // Usiamo un builder per bloccare l'interfaccia con un caricamento 
      // finché Firebase Authentication non ha completato il login anonimo
      builder: (context, child) {
        return authState.when(
          data: (_) => child ?? const SizedBox.shrink(),
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(color: Colors.green),
            ),
          ),
          error: (err, stack) => Scaffold(
            body: Center(
              child: Text('Errore di connessione a Firebase: $err'),
            ),
          ),
        );
      },
    );
  }
}