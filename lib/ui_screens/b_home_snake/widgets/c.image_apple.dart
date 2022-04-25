part of '../_index.dart';

class HomeSnakeAppleImage extends StatelessWidget {
  const HomeSnakeAppleImage({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        width: 400,
        height: 400,
        child: sizeWidth >= 1100
            ? Image.asset(dt.imageAppleX)
            : Image.asset(dt.imageAppleY),
      ),
    );
    // return Center(
    //   child: SizedBox(
    //     width: 400,
    //     height: 400,
    //     child: LayoutBuilder(
    //       builder: (context, constraints) {
    //         if (constraints.minWidth <= 1100) {
    //           return Image.asset(dt.imageAppleY);
    //         } else {
    //           return Image.asset(dt.imageAppleX);
    //         }
    //       },
    //     ),
    //   ),
    // );
  }
}
