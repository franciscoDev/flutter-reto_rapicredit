import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            context.push('/home', extra: '¡Bienvenid@ a RapiCredit!');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF10C288),
            foregroundColor: const Color(0xFF1a2f4d),
            padding: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 8,
            shadowColor: const Color(0xFF06b6d4).withValues(alpha: 0.4),
          ),
          child: const Text(
            '¡Comenzar!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
