part of '../_index.dart';

class HomeQuotes extends StatelessWidget {
  const HomeQuotes({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeData.st;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              dt.quotes,
              textScaleFactor: 1.5,
              style: GoogleFonts.itim(),
            ),
            Text(
              dt.quotesInd,
              textAlign: TextAlign.center,
              style: GoogleFonts.amaranth(),
            ),
          ],
        ),
      ),
    );
  }
}
