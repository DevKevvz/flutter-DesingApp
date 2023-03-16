import 'package:flutter/material.dart';
import 'package:flutter_desing_app/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Desings App',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'basic_desing': (_) => const BasicDesingScreen(),
        'scroll_screen': (_) => const ScrollScreen()
      },
    );
  }
}
