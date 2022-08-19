import '../../../utils/exports.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(150),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/Logo.png'),
                ),
                accountName: Text('Kamran Khan'),
                accountEmail: Text('kamranktk807@gmail.com')),
          ),
          DrawerTile(
            title: 'Home',
            leading: Icons.home_outlined,
            onTap: () {},
          ),
          DrawerTile(
            title: 'Review Cart',
            leading: Icons.reviews_outlined,
            onTap: () {},
          ),
          DrawerTile(
            title: 'My Profile',
            leading: Icons.person_outline,
            onTap: () {},
          ),
          DrawerTile(
            title: 'Notification',
            leading: Icons.notifications_active_outlined,
            onTap: () {},
          ),
          DrawerTile(
            title: 'Rating & Review',
            leading: Icons.star_border_outlined,
            onTap: () {},
          ),
          DrawerTile(
            title: 'Wishlist',
            leading: Icons.favorite_border,
            onTap: () {},
          ),
          DrawerTile(
            title: 'Raise a complaint',
            leading: Icons.query_stats_outlined,
            onTap: () {},
          ),
          // DrawerTile(
          //   title: 'FAQs',
          //   leading: Icons.question_mark,
          //   onTap: () {},
          // ),
          DrawerTile(
            title: 'Logout',
            leading: Icons.logout_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
