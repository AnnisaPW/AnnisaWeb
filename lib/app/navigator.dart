part of '_index.dart';

final nav = RM.injectNavigator(
  routes: {
    // Routes.root: (data) => const HomeView(),
    Routes.root: (data) => const HomeSnakeView(),

    Routes.xsplash: (data) => const XsplashView(),
    Routes.xlogin: (data) => const XloginView(),
    Routes.xregis: (data) => const XregisView(),
    Routes.xhome: (data) => const XhomeView(),
    // ----- ----- ----- ----- ----- ----- ----- ----- -----

    Routes.home: (data) => const HomeView(),
    Routes.homeSnake: (data) => const HomeSnakeView(),
    Routes.battleSnake: (data) => const BattleSnakeView(),
    Routes.singleSnake: (data) => const SingleSnakeView(),
  },
  onNavigateBack: (RouteData? data) {
    if (data == null) {
      Dialogs.confirmExit();
      return false;
    }

    if (data.location == Routes.battleSnake) {
      logger.wtf('battleSnake');
      logger.wtf(dt.rmIsRunning.st);

      if (dt.rmIsRunning.st == true) {
        dt.rmIsPause.st = true;
        Dialogs.gameOver('Confirmation',
            'Your point is ${dt.rmPoint.st}. Do you want to exit?');
      } else if (dt.rmIsRunning.st == false) {
        RM.navigate.forceBack();
        logger.wtf('exit from battle snake');
      }

      return false;
    }

    if (data.location == Routes.singleSnake) {
      logger.wtf('singleSnake');
      logger.wtf(dt2.rmIsRunning.st);

      if (dt2.rmIsRunning.st == true) {
        dt2.rmIsPause.st = true;
        Dialogs.gameOver2('Confirmation',
            'Your point is ${dt2.rmPoint.st}. Do you want to exit?');
      } else if (dt2.rmIsRunning.st == false) {
        RM.navigate.forceBack();
        logger.wtf('exit from single snake');
      }
      return false;
    }
    return null;
  },
);
