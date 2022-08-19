import '../../../utils/exports.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
        onTabChange: (value) {
          Provider.of<BottomNavBarProvider>(context, listen: false)
              .onNavBarItemTap(value);
          print(value);
        },
        backgroundColor: AppTheme.kPrimaryColor,
        tabBorderRadius: 5,
        tabActiveBorder: Border.all(
          color: AppTheme.kPrimaryColor,
          width: 1,
        ),
        curve: Curves.easeOutExpo,
        duration: const Duration(milliseconds: 100), // tab animation duration
        gap: 8,
        color: Colors.grey[300],
        activeColor: AppTheme.kWhiteColor,
        iconSize: 24,
        tabBackgroundColor: AppTheme.kWhiteColor.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ), // navigation bar padding
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.search_outlined,
            text: 'Search',
          ),
          GButton(
            icon: Icons.person_outline,
            text: 'Profile',
          )
        ]);
  }
}
