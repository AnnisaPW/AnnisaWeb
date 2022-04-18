part of '_index.dart';

BattleSnakeCtrl get ct => battleSnakeCtrl;
BattleSnakeData get dt => battleSnakeData.st;

SingleSnakeCtrl get ct2 => singleSnakeCtrl;
SingleSnakeData get dt2 => singleSnakeData.st;

class Dialogs {
  static Future<T?> gameOver<T>(String message) => RM.navigate.toDialog<T>(
        AlertDialog(
          title: const Text('Game Over'),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('Restart'),
              onPressed: () {
                nav.back();
                ct.reset();
              },
            ),
          ],
        ),
        postponeToNextFrame: true,
      );

  static Future<T?> gameOver2<T>(String message) => RM.navigate.toDialog<T>(
        AlertDialog(
          title: const Text('Game Over'),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('Restart'),
              onPressed: () {
                nav.back();
                ct2.reset();
              },
            ),
          ],
        ),
        postponeToNextFrame: true,
      );

  static Future<T?> stopGame<T>(String message) => RM.navigate.toDialog<T>(
        AlertDialog(
          title: const Text('Alert'),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('No'),
              onPressed: () {
                nav.back();

                // ct.reset();
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                nav.back();
                dt.rmIsPause.st = false;
                dt.rmIsRunning.st = false;
                // ct.reset();
              },
            ),
          ],
        ),
        postponeToNextFrame: true,
      );
}
