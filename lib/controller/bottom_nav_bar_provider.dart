import '../utils/exports.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int currentIndex = 0;

  void onNavBarItemTap(int value) {
    currentIndex = value;
    notifyListeners();
  }
}
