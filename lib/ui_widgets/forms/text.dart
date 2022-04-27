part of '_index.dart';

class TextSecularOne extends StatelessWidget {
  final String text;
  const TextSecularOne({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaleFactor: 5,
      style: GoogleFonts.secularOne(),
    );
  }
}
