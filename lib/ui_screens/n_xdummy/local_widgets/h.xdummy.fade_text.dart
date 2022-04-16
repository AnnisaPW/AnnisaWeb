part of '_index.dart';

class XdummyFadeText extends ConsumerWidget {
  final String title;
  const XdummyFadeText(
    this.title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Opacity(
      opacity: 0.6,
      child: Text(title),
    );
  }
}
