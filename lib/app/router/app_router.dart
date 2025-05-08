import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:news_portal/presentation/login/longin_screen.dart';
import 'package:news_portal/presentation/news_list/news_list_screen.dart';

final appRouter = GoRouter(
  initialLocation: AppRouter.login.path,
  routes: [
    GoRoute(
      path: AppRouter.login.path,
      name: AppRouter.login.name,
      builder: (context, state) => LonginScreen(),
    ),
    GoRoute(
      path: AppRouter.newsList.path,
      name: AppRouter.newsList.name,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: NewsListScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(
                curve: Curves.easeInOutCirc,
              ).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);

enum AppRouter { login, newsList }

extension AppRouterExtension on AppRouter {
  String get path => '/$this';
}
