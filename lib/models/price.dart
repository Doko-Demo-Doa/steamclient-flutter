class Price {
  String currency;
  int initial;
  int finalPrice;
  int discountPercent;

  Price.fromJson(Map<String, dynamic> json):
    currency = json['currency'],
    initial = json['initial'],
    finalPrice = json['final_price'];

  Map<String, dynamic> toJson() => {
    'currency': currency,
    'initial': initial,
    'final_price': finalPrice
  };
}
