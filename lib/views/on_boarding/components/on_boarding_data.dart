import '../../../utils/exports.dart';

class OnBoardingData {
  static List<PageViewModel> onBoardingPages = [
    PageViewModel(
      title: 'Healthy Food',
      body:
          'Eating a wide variety of healthy foods helps to keep you in good health and protects you against chronic disease.',
      image: Container(
          padding: EdgeInsets.only(top: Get.size.height * 0.04),
          child: Center(child: Image.asset(AssetPaths.kOnBoarding01))),
    ),
    PageViewModel(
      title: 'Cooperative Cooking Team',
      body:
          'Our cooking team is cooperative, which can help to serve healthful foods to our customers.',
      image: Container(
          padding: EdgeInsets.only(top: Get.size.height * 0.04),
          child: Center(child: Image.asset(AssetPaths.kOnBoarding02))),
    ),
    PageViewModel(
      title: 'Fast Delivery',
      body:
          'Fresh food delivery is a courier service in which a restaurant, store, or independent food-delivery company delivers food to a customers.',
      image: Container(
          padding: EdgeInsets.only(top: Get.size.height * 0.04),
          child: Center(child: Image.asset(AssetPaths.kOnBoarding03))),
    ),
  ];
}
