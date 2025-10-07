import 'package:flutter/material.dart';
import 'package:reto_rapicredit/routes/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 18),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      title: 'RapiCredit',
    );
  }
}
