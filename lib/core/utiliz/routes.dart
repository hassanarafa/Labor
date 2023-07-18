import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home-service.dart';
import '../../features/login/presentation/views/loginpage.dart';
import '../../features/login/presentation/views/registerpage.dart';
import '../../features/pageviewindicator/presentation/views/pagesviewindicator.dart';
import '../../features/splash/presentation/views/splashview.dart';

abstract class AppRouter {
  static const kHomeService = "/homeservice";
  static const kPageView = "/pageview";
  static const kLoginPage = "/loginpage";
  static const kRegisterPage = "/registerpage";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splashview(),
    ),
    GoRoute(
      path: kHomeService,
      builder: (context, state) => const HomeServicePage(),
    ),
    GoRoute(
      path: kPageView,
      builder: (context, state) => const PsgeView(),
    ),
    GoRoute(
      path: kLoginPage,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: kRegisterPage,
      builder: (context, state) => const RegisterPage(),
    ),
  ]);
}
