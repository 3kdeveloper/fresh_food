import '../../utils/exports.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fresh Food'), centerTitle: true),
      drawer: const CustomDrawer(),
    );
  }
}
