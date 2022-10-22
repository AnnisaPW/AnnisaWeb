part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----

    Routes.home: (RouteData data) => const HomeView(),
    Routes.homeSnake: (RouteData data) => const HomeSnakeView(),
    Routes.puzzleGame: (RouteData data) => const PuzzleGameHome(),
  };
}
