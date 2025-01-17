class CurrencyModel {
  String currency;
  String price;
  String rates;

  CurrencyModel({required this.currency, required this.price, required this.rates});
  
  static List<CurrencyModel> currencyItems = [
    CurrencyModel(currency: "USD", price: "1.00", rates: "1.00"),
    CurrencyModel(currency: "EURO", price: "1.00", rates: "0.92"),
    CurrencyModel(currency: "POND", price: "1.00", rates: "0.79"),
    CurrencyModel(currency: "JPY", price: "1.00", rates: "144.34")
  ];
}