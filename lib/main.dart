import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'features/welcome/presentation/screens/welcome_screen.dart';

void main() {
  // Set preferred orientations and system UI
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const AllServicesApp());
}

/// Main application widget for ALL SERVICES
class AllServicesApp extends StatelessWidget {
  const AllServicesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALL SERVICES',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // Disable default visual density to match exact Figma design
        visualDensity: VisualDensity.standard,
      ),
      home: const WelcomeScreen(),
    );
  }
}
