import 'package:flutter/material.dart';
import 'package:reto_rapicredit/features/widgets/oval_high_light_text.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
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
                  text: 'RapiCredit',
                  style: TextStyle(color: Color(0xFF10C288)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
          Column(
            children: [
              const Text(
                'Disfruta y gestiona tus\ncréditos fácilmente en',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 4),
              OvalHighlightText(
                text: 'una sola app.',
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
