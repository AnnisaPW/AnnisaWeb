part of '../_index.dart';

class HomeSnakeTitle extends StatelessWidget {
  const HomeSnakeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Visibility(
      visible: sizeWidth >= 1200,
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'SNAKE GAME',
                style: TextStyle(
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
