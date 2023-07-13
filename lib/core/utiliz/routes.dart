import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home-service.dart';
import '../../features/splash/presentation/views/splashview.dart';

abstract class AppRouter {
  static const kHomeService = "/homeservice";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splashview(),
    ),
    GoRoute(
      path: kHomeService,
      builder: (context, state) => const HomeServicePage(),
    ),
  ]);
}
