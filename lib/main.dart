import 'package:cream_ui_test/test_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          background: Color(0xFFFBF8E9),
          primary: Color(0xFFFECEB3),
          primaryContainer: Color(0xFF9566F9),
          secondaryContainer: Color(0xFFDCCCFD),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1B1B1B),
          ),
          headline2: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1B1B1B),
          ),
          headline3: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1B1B1B),
          ),
          labelMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xFF9A9A9A),
          ),
          // labelSmall: TextStyle(
          //   fontSize: 18,
          //   fontWeight: FontWeight.w700,
          //   color: Color(0xFF1B1B1B),
          // ),
        ),
      ),
      home: const TestScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
