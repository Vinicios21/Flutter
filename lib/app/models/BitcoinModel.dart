class BitcoinModel {

  final double buy;
  final double sell;
  final String symbol;

  BitcoinModel(this.buy, this.sell, this.symbol);


  BitcoinModel.fromJson(Map<String, dynamic> json) :

        buy= json['buy'],
        sell= json['sell'],
        symbol= json['symbol'];


  Map<String, dynamic> toJson() => {
    'buy': buy,
    'sell': sell,
    'symbol': symbol,
  };

}