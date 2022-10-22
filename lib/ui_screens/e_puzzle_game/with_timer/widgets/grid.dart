part of '../_index.dart';

class PuzzleWithTimerGrid extends StatefulWidget {
  final double containerSide;
  const PuzzleWithTimerGrid({
    Key? key,
    required this.containerSide,
  }) : super(key: key);

  @override
  State<PuzzleWithTimerGrid> createState() => _PuzzleWithTimerGridState();
}

class _PuzzleWithTimerGridState extends State<PuzzleWithTimerGrid> {
  PuzzleGameCtrl get ct => puzzleGameCtrl;

  @override
  void initState() {
    setState(
      () {
        ct.restart();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          for (var i = 0; i < ct.values.length; i++)
            Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: ct.isRunning == true
                      ? () {
                          setState(
                            () {
                              ct.swap(i);
                            },
                          );
                        }
                      : null,
                  child: Stack(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        margin: EdgeInsets.only(
                          left: ct.values[i][0] * widget.containerSide,
                          top: ct.values[i][1] * widget.containerSide,
                        ),
                        width: widget.containerSide,
                        height: widget.containerSide,
                        child: Card(
                          margin: const EdgeInsets.all(3),
                          color: Colors.grey.shade700,
                          child: Center(
                            child: Text(
                              i.toString(),
                              textScaleFactor: 2.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
