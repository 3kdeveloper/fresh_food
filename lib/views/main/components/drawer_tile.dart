import '../../../utils/exports.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final IconData leading;
  final VoidCallback onTap;

  const DrawerTile({
    Key? key,
    required this.title,
    required this.leading,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leading,
        color: AppTheme.kPrimaryColor,
      ),
      title: Text(title),
      // trailing: const Icon(
      //   Icons.arrow_forward_ios,
      //   color: AppTheme.kPrimaryColor,
      // ),
    );
  }
}
