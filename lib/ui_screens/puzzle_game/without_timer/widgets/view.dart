part of '../_index.dart';

class PuzzleWithoutTimerView extends StatefulWidget {
  const PuzzleWithoutTimerView({Key? key}) : super(key: key);

  @override
  State<PuzzleWithoutTimerView> createState() => _PuzzleWithoutTimerViewState();
}

class _PuzzleWithoutTimerViewState extends State<PuzzleWithoutTimerView> {
  PuzzleGameCtrl get ct => puzzleGameCtrl;

  final sidex = 3;

  String textDialogue() => 'Congratulation! You solved the puzzle';

  void playGame() {
    setState(
      () {
        ct.isRunning = true;
        ct.shuffle();
      },
    );
  }

  bool checkIsTarget() => ct.target.toString == ct.values.toString;
  bool stopRunning() => ct.isRunning == false;

  void isFinish() {
    ct.isRunning = false;
    if (checkIsTarget() || stopRunning()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Finish'),
            content: Text(textDialogue()),
            actions: [
              TextButton(
                child: const Text('Restart'),
                onPressed: () {
                  setState(
                    () {
                      ct.restart();
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ],
          );
        },
      );
    }
  }

  void quickFinish() {
    setState(
      () {
        ct.values = ct.target;
        isFinish();
      },
    );
  }

  void stopGame() {
    setState(
      () => isFinish(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puzzle Game'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonOutlinedWithIcon(
                    text: ct.isRunning == false ? 'Play' : 'Stop',
                    icon: ct.isRunning == false ? Icons.play_arrow_rounded : Icons.stop_rounded,
                    onClicked: ct.isRunning == false ? () => playGame() : () => stopGame(),
                  ),
                  MediaQuery.of(context).size.width > 270
                      ? ButtonOutlinedWithIcon(
                          text: 'Quick Finish',
                          icon: Icons.flash_on_rounded,
                          onClicked: ct.isRunning == true ? () => quickFinish() : null,
                        )
                      : const SizedBox.shrink()
                ],
              ),
              MediaQuery.of(context).size.width <= 270
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonOutlinedWithIcon(
                          text: 'Quick Finish',
                          icon: Icons.flash_on_rounded,
                          onClicked: ct.isRunning == true ? () => quickFinish() : null,
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
              PuzzleWithoutTimerLayout(sidex: sidex),
            ],
          ),
        ),
      ),
    );
  }
}
