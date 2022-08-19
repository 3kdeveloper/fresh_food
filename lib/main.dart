import '../../utils/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String isAppFirstTimeOpened = 'isAppFirstTimeOpened';

  Future<void> openBox() async {
    await Hive.openBox(isAppFirstTimeOpened);
  }

  @override
  void initState() {
    super.initState();
    openBox();
  }

  @override
  void dispose() {
    super.dispose();
    Hive.box(isAppFirstTimeOpened).close();
  }

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
