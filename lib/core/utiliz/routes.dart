import 'package:go_router/go_router.dart';
import 'package:labor/features/Authentication/presentation/views/resetpasswordpage.dart';

import '../../features/welcomepage/presentation/views/WelcomePage.dart';
import '../../features/Authentication/presentation/views/forgetpassword.dart';
import '../../features/Authentication/presentation/views/loginpage.dart';
import '../../features/Authentication/presentation/views/registerpage.dart';
import '../../features/pageviewindicator/presentation/views/pagesviewindicator.dart';
import '../../features/Splash/presentation/views/splashview.dart';

abstract class AppRouter {
  static const kHomeService = "/homeservice";
  static const kPageView = "/pageview";
  static const kLoginPage = "/loginpage";
  static const kRegisterPage = "/registerpage";
  static const kForgetPassPage = "/forgetpasspage";
  static const kResetPassPage = "/resetpasspage";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splashview(),
    ),
    GoRoute(
      path: kHomeService,
      builder: (context, state) => const WelcomePage(),
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
    GoRoute(
      path: kForgetPassPage,
      builder: (context, state) => const ForgetPassword(),
    ),
    GoRoute(
      path: kResetPassPage,
      builder: (context, state) => const ResetPassword(),
    ),
  ]);
}
