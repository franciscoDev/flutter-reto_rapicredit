import 'package:flutter/material.dart';
import 'package:reto_rapicredit/features/widgets/welcome_button.dart';
import 'package:reto_rapicredit/features/widgets/welcome_logo_section.dart';
import 'package:reto_rapicredit/features/widgets/welcome_content.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            child: Column(
              children: [
                // Logo Section
                LogoSection(),
                // Welcome Content
                WelcomeContent(),
                // Button Section
                WelcomeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
