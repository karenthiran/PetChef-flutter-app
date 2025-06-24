class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description:
          'Pick your Dog nuturions from our menu\n                 more than 35 times',
      image: "images/buyfood.png",
      title: 'Select From Our\n     Best Menu'),
  UnboardingContent(
      description:
          'You can pay cash on delivery and\n           Card paymet avaliable',
      image: "images/easypay.png",
      title: 'Easy and Online Payment'),
  UnboardingContent(
      description:
          'Delliver your Dog nutrions at your\n                       doorstep',
      image: "images/quickdeli.png",
      title: 'Quick Delivery at Your Doorstep'),
];
