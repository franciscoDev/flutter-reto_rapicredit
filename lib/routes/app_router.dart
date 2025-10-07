import 'package:go_router/go_router.dart';

import 'package:reto_rapicredit/features/pages/home/home_screen.dart';
import 'package:reto_rapicredit/features/pages/welcome_screen.dart';

// Importa tus otras pantallas aquí
// import '../features/screens/home/home_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/welcome',
  routes: [
    GoRoute(
      path: '/welcome',
      name: 'welcome',
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) {
        // Obtener el parámetro extra
        final texto = state.extra as String? ?? 'Sin mensaje';
        return HomeScreen(mensaje: texto);
      },
    ),
  ],
);
