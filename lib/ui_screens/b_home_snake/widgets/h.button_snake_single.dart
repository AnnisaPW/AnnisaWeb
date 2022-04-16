part of '../_index.dart';

class HomeSnakeBtnSingle extends StatelessWidget {
  const HomeSnakeBtnSingle({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeCtrl.data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.yellow.shade100),
      child: const Text(
        'Single',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      onPressed: () => nav.to(Routes.singleSnakeX),
    );
  }
}
