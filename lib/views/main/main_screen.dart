import '../../utils/exports.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  final List _pages = const [
    HomeScreen(),
    FavoriteScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Fresh Food'), centerTitle: true),
          drawer: const CustomDrawer(),
          body: _pages[provider.currentIndex],
          bottomNavigationBar: const CustomNavBar(),
        );
      },
    );
  }
}
