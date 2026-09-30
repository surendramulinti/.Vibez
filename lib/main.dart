import 'package:flutter/material.dart';
import 'screens/app_shell.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const VibezApp());
}

class VibezApp extends StatelessWidget {
  const VibezApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '.Vibez',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF09090F),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B5CF6),
          brightness: Brightness.dark,
        ),
        fontFamily: 'Roboto',
      ),
      home: const AppShell(),
    );
  }
}
