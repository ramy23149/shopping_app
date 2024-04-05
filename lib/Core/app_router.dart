
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
static String kSplashView = '/';
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      )
    ],
  );
}
