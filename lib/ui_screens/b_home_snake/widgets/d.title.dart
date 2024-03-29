part of '../_index.dart';

class HomeSnakeTitle extends StatelessWidget {
  const HomeSnakeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    return Visibility(
      visible: sizeWidth >= 1200,
      child: Column(
        children: [
          SizedBox(
            height: sizeHeight < 660
                ? 20
                : sizeHeight < 770
                    ? 50
                    : 100,
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
