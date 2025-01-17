class InboxModel {
  String title;
  String message;

  InboxModel({required this.title, required this.message});

  static List<InboxModel> inboxItems = [
    InboxModel(title: "Investment just got easier", message: "Investing in a bank is one of the common and safe choices for beginners who want to start their investment journey. This article will provide a short guide to getting started investing in banks, covering some of the investment products offered by banks and tips for getting started."),
    InboxModel(title: "Tips for safe foreign transactions", message: "Choose the Right Transfer Method:There are several transfer methods that can be used, such as bank transfers, electronic transfers, or using money transfer services such as PayPal or TransferWise.")
  ];
}