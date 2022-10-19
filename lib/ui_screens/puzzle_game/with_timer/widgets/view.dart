part of '../_index.dart';

class PuzzleWithTimerView extends StatefulWidget {
  const PuzzleWithTimerView({Key? key}) : super(key: key);

  @override
  State<PuzzleWithTimerView> createState() => _PuzzleWithTimerViewState();
}

class _PuzzleWithTimerViewState extends State<PuzzleWithTimerView> {
  PuzzleGameCtrl get ct => puzzleGameCtrl;

  final sidex = 3;
  var startCount = 0;
  late Timer timerX;
  late Timer timer;
  var seconds = 0;
  var minutes = 0;
  var hours = 0;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {});
    timerX = Timer.periodic(const Duration(seconds: 1), (timer) {});
    super.initState();
  }

  void timerStop() => timer.cancel();

  timerStart() {
    startCount++;
    seconds = startCount % 60;
    hours = (startCount / 3600).floor();
    minutes = (startCount / 60).floor() - (hours * 60);
  }

  String formattedTimer() {
    String stringSec = seconds.toString().length <= 1 ? '0$seconds' : '$seconds';
    String stringMin = minutes.toString().length <= 1 ? '0$minutes' : '$minutes';
    String stringHours = hours.toString().length <= 1 ? '0$hours' : '$hours';
    return '$stringHours:$stringMin:$stringSec';
  }

  String textDialogue() {
    var x = 0;
    var y = 0;
    var z = 0;

    x = startCount % 60;
    z = (startCount / 3600).floor();
    y = (startCount / 60).floor() - (z * 60);

    var xString = '';
    var yString = '';
    var zString = '';

    if (x > 0) {
      var word = 'seconds';
      if (x == 1) {
        word = 'second';
      }
      xString = ' $x $word';
    }
    if (y > 0) {
      var word = 'minutes';
      if (y == 1) {
        word = 'minute';
      }
      yString = ' $y $word';
    }
    if (z > 0) {
      var word = 'hours';
      if (z == 1) {
        word = 'hour';
      }
      zString = ' $z $word';
    }

    return 'Congratulation. You solved the puzzle within$zString$yString$xString';
  }

  void getStart() {
    const oneSec = Duration(seconds: 1);
    timerX = Timer.periodic(
      oneSec,
      (Timer t) {
        timer = t;
        setState(
          () => timerStart(),
        );
      },
    );
  }

  void playGame() {
    setState(
      () {
        ct.isRunning = true;
        ct.shuffle();
        getStart();
      },
    );
  }

  void timerRestart() {
    startCount = 0;
    minutes = 0;
    seconds = 0;
    hours = 0;
  }

  bool checkIsTarget() => ct.target.toString == ct.values.toString;
  bool stopRunning() => ct.isRunning == false;

  void isFinish() {
    ct.isRunning = false;
    if (checkIsTarget() || stopRunning()) {
      timerStop();
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
                      timerRestart();
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
  void dispose() {
    timerX.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puzzle Game With Timer'),
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
              MediaQuery.of(context).size.width < 400
                  ? Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        formattedTimer(),
                        textScaleFactor: 2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 500,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonOutlinedWithIcon(
                      text: ct.isRunning == false ? 'Play' : 'Stop',
                      icon: ct.isRunning == false ? Icons.play_arrow_rounded : Icons.stop_rounded,
                      onClicked: ct.isRunning == false ? () => playGame() : () => stopGame(),
                    ),
                    MediaQuery.of(context).size.width >= 400
                        ? Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              formattedTimer(),
                              textScaleFactor: 2,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    MediaQuery.of(context).size.width >= 250
                        ? ButtonOutlinedWithIcon(
                            text: 'Quick Finish',
                            icon: Icons.flash_on_rounded,
                            onClicked: ct.isRunning == true ? () => quickFinish() : null,
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
              MediaQuery.of(context).size.width < 250
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
              PuzzleWithTimerLayout(sidex: sidex),
            ],
          ),
        ),
      ),
    );
  }
}
