import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const DinopediaApp());
}

class DinopediaApp extends StatelessWidget {
  const DinopediaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinopedia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF98D8C1), // Mint green
          onPrimary: Colors.white,
          secondary: const Color(0xFFB5EAD7), // Lighter mint
          onSecondary: Colors.black87,
          surface: Colors.white,
          onSurface: Colors.black87,
          background: const Color(0xFFF0F7F4), // Very light mint
          onBackground: Colors.black87,
          error: Colors.red.shade400,
          onError: Colors.white,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF98D8C1),
          foregroundColor: Colors.white,
        ),
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF98D8C1),
            foregroundColor: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF98D8C1),
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFF98D8C1), // Mint green
          onPrimary: Colors.black87,
          secondary: const Color(0xFFB5EAD7), // Lighter mint
          onSecondary: Colors.black87,
          surface: const Color(0xFF2C3E50), // Dark surface
          onSurface: Colors.white,
          background: const Color(0xFF1A1A1A), // Dark background
          onBackground: Colors.white,
          error: Colors.red.shade400,
          onError: Colors.white,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF2C3E50),
          foregroundColor: Color(0xFF98D8C1),
        ),
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: const Color(0xFF2C3E50),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF98D8C1),
            foregroundColor: Colors.black87,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF98D8C1),
          unselectedItemColor: Colors.grey,
          backgroundColor: Color(0xFF2C3E50),
        ),
      ),
      home: const HomeScreen(),
    );
  }
} 