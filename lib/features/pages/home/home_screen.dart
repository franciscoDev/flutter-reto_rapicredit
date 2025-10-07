import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String mensaje;

  const HomeScreen({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0a1e3d), Color(0xFF1a2f4d)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.2,
                      ),
                      children: [
                        TextSpan(text: 'Bienvenido a\n'),
                        TextSpan(
                          text: 'Home',
                          style: TextStyle(color: Color(0xFF10C288)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    mensaje,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
