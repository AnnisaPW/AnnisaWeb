part of '../_index.dart';

class HomeBiodata extends StatelessWidget {
  const HomeBiodata({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeData.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            dt.greet,
            style: GoogleFonts.amaranth(
              fontSize: 18,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'I am',
            textScaleFactor: 1.5,
            style: GoogleFonts.amaranth(),
          ),
          const SizedBox(height: 5),
          Text(
            dt.name,
            textAlign: TextAlign.center,
            textScaleFactor: 2,
            style: GoogleFonts.amaranth(),
          ),
          const SizedBox(height: 5),
          Text(
            dt.biodata,
            style: GoogleFonts.amaranth(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
