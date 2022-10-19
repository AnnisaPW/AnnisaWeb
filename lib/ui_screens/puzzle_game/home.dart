part of '_index.dart';

class PuzzleGameHome extends StatelessWidget {
  const PuzzleGameHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 500,
            maxHeight: 500,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment:
                    MediaQuery.of(context).size.width > 300 ? MainAxisAlignment.spaceAround : MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('With Timer'),
                    onPressed: () {
                      final route = MaterialPageRoute(
                        builder: (context) => const PuzzleWithTimerView(),
                      );
                      Navigator.push(context, route);
                    },
                  ),
                  MediaQuery.of(context).size.width >= 300
                      ? ElevatedButton(
                          child: const Text('Without Timer'),
                          onPressed: () {
                            final route = MaterialPageRoute(
                              builder: (context) => const PuzzleWithoutTimerView(),
                            );
                            Navigator.push(context, route);
                          },
                        )
                      : const SizedBox.shrink(),
                ],
              ),
              MediaQuery.of(context).size.width < 300
                  ? ElevatedButton(
                      child: const Text('Without Timer'),
                      onPressed: () {
                        final route = MaterialPageRoute(
                          builder: (context) => const PuzzleWithoutTimerView(),
                        );
                        Navigator.push(context, route);
                      },
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
