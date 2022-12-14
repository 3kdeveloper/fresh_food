import '../../../utils/exports.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: OnBoardingData.onBoardingPages,
      showSkipButton: true,
      skip: const Text('SKIP'),
      onSkip: () => Get.to(() => const LoginScreen()),
      showNextButton: true,
      next: const Text('NEXT'),
      showDoneButton: true,
      done: const Text('GET STARTED'),
      onDone: () => Get.to(() => const LoginScreen()),
      skipOrBackFlex: 0,
      nextFlex: 0,
      isProgressTap: false,
      isTopSafeArea: true,
      isBottomSafeArea: true,
      globalBackgroundColor: AppTheme.kWhiteColor,
      dotsDecorator: DotsDecorator(
        activeColor: AppTheme.kPrimaryColor,
        activeSize: const Size(23, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
      ),
    );
  }
}
