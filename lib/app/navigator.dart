part of '_index.dart';

final nav = RM.injectNavigator(
  routes: {
    // Routes.root: (data) => const SingleSnakeXView(),
    // Routes.root: (data) => const SnakeView(),
    Routes.root: (data) => const HomeView(),
    // Routes.root: (data) => const HomeSnakeView(),
    Routes.xsplash: (data) => const XsplashView(),
    Routes.xlogin: (data) => const XloginView(),
    Routes.xregis: (data) => const XregisView(),
    Routes.xhome: (data) => const XhomeView(),
    // ----- ----- ----- ----- ----- ----- ----- ----- -----

    Routes.home: (data) => const HomeView(),
    Routes.homeSnake: (data) => const HomeSnakeView(),
    Routes.battleSnake: (data) => const BattleSnakeView(),
    Routes.singleSnakeX: (data) => const SingleSnakeView(),
  },
);
