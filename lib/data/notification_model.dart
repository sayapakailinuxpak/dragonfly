class NotificationModel {
  String title;
  String messageBody;
  String thumbnailImage;

  NotificationModel({required this.title, required this.messageBody, required this.thumbnailImage});

  static List<NotificationModel> notificationItems = [
    NotificationModel(
      title: "Investment just got easier", 
      messageBody: "Investing in a bank is one of the common and safe choices for beginners who want to start their investment journey. This article will provide a short guide to getting started investing in banks, covering some of the investment products offered by banks and tips for getting started.", 
      thumbnailImage: "assets/images/investment-image.png"
    ),
    NotificationModel(
      title: "Pay using a Dragonfly credit card", 
      messageBody: "Enjoy discounts by using a credit card of up to 70% this promo applies only to new users", 
      thumbnailImage: "assets/images/pay-image.png"
    )
  ];
}