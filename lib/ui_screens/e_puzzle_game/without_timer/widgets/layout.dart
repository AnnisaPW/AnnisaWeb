part of '../_index.dart';

class PuzzleWithoutTimerLayout extends StatelessWidget {
  const PuzzleWithoutTimerLayout({
    Key? key,
    required this.sidex,
  }) : super(key: key);

  final int sidex;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 500,
        maxWidth: 500,
      ),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: LayoutBuilder(
            builder: (context, constraint) {
              final containerSide = constraint.maxWidth / sidex;
              return PuzzleWithoutTimerGrid(
                containerSide: containerSide,
              );
            },
          ),
        ),
      ),
    );
  }
}
