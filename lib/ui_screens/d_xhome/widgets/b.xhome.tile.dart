part of '_index.dart';

class XhomeTile extends ConsumerWidget {
  final String title;
  final String? subtitle;
  final Function()? fun;
  const XhomeTile({
    Key? key,
    required this.title,
    this.subtitle,
    required this.fun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        title: Text(title),
        subtitle: subtitle == null ? null : Text(subtitle!),
        onTap: fun,
      ),
    );
  }
}
