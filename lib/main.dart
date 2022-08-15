import '../../utils/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fresh Food',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      theme: AppTheme.themeData,
      home: const OnBoardingScreen(),
    );
  }
}
