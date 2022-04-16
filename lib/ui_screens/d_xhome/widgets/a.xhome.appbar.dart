part of '_index.dart';

class XhomeAppbar extends ConsumerWidget {
  const XhomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: const Text('Xhome'),
      actions: [
        ButtonAppbarX(
          iconDatax: Icons.person,
          funcx: () => Fun.showBottomSheetWrap(
            context,
            'XProfile',
            const XprofileView(),
          ),
        ),
        ButtonAppbarX(
          iconDatax: Icons.more_vert,
          funcx: () {
            Fun.showBottomSheetDraggable(
              context,
              'Settings',
              const ModalSettings(),
            );
          },
        ),
      ],
    );
  }
}
