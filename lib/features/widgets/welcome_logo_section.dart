import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/logo/Logo_RapiCredit_blanco.png',
              width: 250,
              height: 80,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
