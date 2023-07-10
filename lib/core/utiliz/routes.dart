import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splashview.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splashview(),
    ),
  ]);
}
