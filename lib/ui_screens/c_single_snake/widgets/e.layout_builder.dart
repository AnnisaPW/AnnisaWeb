part of '../_index.dart';

class SingleSnakeLayoutBuilder extends StatelessWidget {
  const SingleSnakeLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth <= 520) {
          return SingleChildScrollView(
            child: Column(
              children: const [
                SingleSnakeBody(),
                SingleSnakeImagePotrait(),
              ],
            ),
          );
        }
        return const SingleSnakeBody();
      },
    );
  }
}
