part of '_index.dart';

class XprofileView extends ConsumerWidget {
  const XprofileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: const [
        SizedBox(height: 60, child: PlaceholderX()),
        SizedBoxH(20),
        SizedBox(height: 60, child: PlaceholderX()),
        SizedBoxH(20),
        SizedBox(height: 60, child: PlaceholderX()),
        SizedBoxH(20),
      ],
    );
  }
}
