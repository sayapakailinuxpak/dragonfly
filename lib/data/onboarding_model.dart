class OnboardingModel {
  List<String> imageBanners;
  String title;
  String description;
  bool isFirstPage;

  OnboardingModel({required this.imageBanners, required this.title, required this.description, required this.isFirstPage});

  static List<OnboardingModel> onboardingItems = [
    OnboardingModel(
      imageBanners: ["assets/images/credit-card-image-1.png", "assets/images/credit-card-image-2.png"],
      title: "Easy to manage money",
      description: "Transfer and receive your money easily\n with dragonfly bank",
      isFirstPage: true
    ),
    OnboardingModel(
      imageBanners: ["assets/images/credit-card-combo-image.png"],
      title: "Transfers between accounts",
      description: "Transferring balances is very easy between\n dragonfly bank accounts",
      isFirstPage: false
    ),
    OnboardingModel(
      imageBanners: ["assets/images/credit-card-1-vertical-image.png", "assets/images/credit-card-2-vertical-image.png", "assets/images/credit-card-3-vertical-image.png"],
      title: "Choose as needed",
      description: "Choose the savings you want to open, we have\n lots of services according to what you need",
      isFirstPage: false
    )
  ];
}