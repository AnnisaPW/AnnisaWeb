part of '_index.dart';

class XfbAuthD extends ConsumerWidget {
  const XfbAuthD({Key? key}) : super(key: key);

  _signInWithGoogle(WidgetRef ref) => ref.read(pvXfbAuthCtrl.notifier).signInWithGoogle(ref);
  _signOut(WidgetRef ref) => ref.read(pvXfbAuthCtrl.notifier).signOut(ref);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbAuthCtrl = ref.watch(pvXfbAuthCtrl);
    final _pvAuthFbSv = ref.watch(pvAuthFbSv);

    return _pvAuthFbSv.user == null
        ? ElevatedButton(
            child: const Text('sign in with google'),
            onPressed: () => _signInWithGoogle(ref),
          )
        : ElevatedButton(
            child: const Text('sign out'),
            onPressed: () => _signOut(ref),
          );
  }
}
