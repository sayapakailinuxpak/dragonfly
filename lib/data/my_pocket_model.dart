class MyPocketModel {
  String cardImageResource;
  String pocketTitle;
  String remainingBalance;

  MyPocketModel({
    required this.cardImageResource,
    required this.pocketTitle,
    required this.remainingBalance
  });

  static List<MyPocketModel> myPocketItems = [
    MyPocketModel(
      cardImageResource: "assets/images/pocket-credit-card-1-image.png", 
      pocketTitle: "Saving Balance", 
      remainingBalance: "\$ 1000.00"
    ),
      MyPocketModel(
      cardImageResource: "assets/images/pocket-credit-card-2-image.png", 
      pocketTitle: "Family Balance", 
      remainingBalance: "\$ 1500.00"
    ),
      MyPocketModel(
      cardImageResource: "assets/images/pocket-credit-card-3-image.png", 
      pocketTitle: "Investment Balance", 
      remainingBalance: "\$ 10000.00"
    ),
      MyPocketModel(
      cardImageResource: "assets/images/pocket-credit-card-4-image.png", 
      pocketTitle: "Alms Balance", 
      remainingBalance: "\$ 500.00"
    )
  ];
}