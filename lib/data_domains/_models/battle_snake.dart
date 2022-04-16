// part of '_index.dart';

// class BattleSnake {
//   final int totalX;
//   final int totalY;
//   final List<Snake>snake;
//   final int point;
//   final String arah;
//   final String arahSnake2;
//   final int foodX;
//   final int foodY;
//   final bool enableStart;
//   final int initDuration;
//   final bool isPause;
//   final List<List<int>> snakeAuto;
//   final bool changeDuration1;
//   final bool changeDuration2;
//   final bool changeDuration3;
//   BattleSnake({
//     this.totalX = 0,
//     this.totalY = 0,
    
//     this.point = 0,
//     this.arah = '',
//     this.arahSnake2 = '',
//     this.foodX = 0,
//     this.foodY = 0,
//     this.enableStart = false,
//     this.initDuration = 0,
//     this.isPause = false,
//     this.snakeAuto = const [],
//     this.changeDuration1 = false,
//     this.changeDuration2 = false,
//     this.changeDuration3 = false,
//   });

//   BattleSnake copyWith({
//     int? totalX,
//     int? totalY,
//     int? point,
//     String? arah,
//     String? arahSnake2,
//     int? foodX,
//     int? foodY,
//     bool? enableStart,
//     int? initDuration,
//     bool? isPause,
//     List<List<int>>? snakeAuto,
//     bool? changeDuration1,
//     bool? changeDuration2,
//     bool? changeDuration3,
//   }) {
//     return BattleSnake(
//       totalX: totalX ?? this.totalX,
//       totalY: totalY ?? this.totalY,
//       point: point ?? this.point,
//       arah: arah ?? this.arah,
//       arahSnake2: arahSnake2 ?? this.arahSnake2,
//       foodX: foodX ?? this.foodX,
//       foodY: foodY ?? this.foodY,
//       enableStart: enableStart ?? this.enableStart,
//       initDuration: initDuration ?? this.initDuration,
//       isPause: isPause ?? this.isPause,
//       snakeAuto: snakeAuto ?? this.snakeAuto,
//       changeDuration1: changeDuration1 ?? this.changeDuration1,
//       changeDuration2: changeDuration2 ?? this.changeDuration2,
//       changeDuration3: changeDuration3 ?? this.changeDuration3,
//     );
//   }

//   @override
//   String toString() {
//     return 'BattleSnake(totalX: $totalX, totalY: $totalY, point: $point, arah: $arah, arahSnake2: $arahSnake2, foodX: $foodX, foodY: $foodY, enableStart: $enableStart, initDuration: $initDuration, isPause: $isPause, snakeAuto: $snakeAuto, changeDuration1: $changeDuration1, changeDuration2: $changeDuration2, changeDuration3: $changeDuration3)';
//   }
// }
