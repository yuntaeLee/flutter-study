import 'package:flutter/material.dart';
import 'package:pomodoro/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xffe7626c),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color(0xff232b55),
          ),
        ),
        cardColor: const Color(0xfff4eddb),
      ),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
