import '../exports.dart';

class OnBoardingData {
  static List<PageViewModel> onBoardingPages = [
    PageViewModel(
      title: 'Healthy Food',
      body:
          'Eating a wide variety of healthy foods helps to keep you in good health and protects you against chronic disease.',
      image: Container(
          padding: EdgeInsets.only(top: Get.size.height * 0.04),
          child: Center(child: Image.asset('assets/images/healthy_food.png'))),
    ),
    PageViewModel(
      title: 'Cooperative Cooking Team',
      body:
          'Our cooking team is cooperative, which can help to serve healthful foods to our customers.',
      image: Container(
          padding: EdgeInsets.only(top: Get.size.height * 0.04),
          child: Center(child: Image.asset('assets/images/cooking_team.png'))),
    ),
    PageViewModel(
      title: 'Fast Delivery',
      body:
          'Fresh food delivery is a courier service in which a restaurant, store, or independent food-delivery company delivers food to a customers.',
      image: Container(
          padding: EdgeInsets.only(top: Get.size.height * 0.04),
          child: Center(child: Image.asset('assets/images/fast_delivery.png'))),
    ),
  ];
}
