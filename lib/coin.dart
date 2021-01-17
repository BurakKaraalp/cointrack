class Coin {
  String id;
  String symbol;
  String name;
  String image;
  double currentPrice;
  double marketCap;
  int marketCapRank;
  double fullyDilutedValuation;
  double totalVolume;
  double high24h;
  double low24h;
  double priceChange24h;
  double priceChangePercentage24h;
  double marketCapChange24h;
  double marketCapChangePercentage24h;
  double circulatingSupply;
  double totalSupply;
  double maxSupply;
  double ath;
  double athChangePercentage;
  String athDate;
  double atl;
  double atlChangePercentage;
  String atlDate;
  String lastUpdated;

  Coin(
      {this.id,
      this.symbol,
      this.name,
      this.image,
      this.currentPrice,
      this.marketCap,
      this.marketCapRank,
      this.fullyDilutedValuation,
      this.totalVolume,
      this.high24h,
      this.low24h,
      this.priceChange24h,
      this.priceChangePercentage24h,
      this.marketCapChange24h,
      this.marketCapChangePercentage24h,
      this.circulatingSupply,
      this.totalSupply,
      this.maxSupply,
      this.ath,
      this.athChangePercentage,
      this.athDate,
      this.atl,
      this.atlChangePercentage,
      this.atlDate,
      this.lastUpdated});

  Coin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    image = json['image'];
    currentPrice =
        json['current_price'] == null ? 0.0 : json['current_price'].toDouble();
    marketCap =
        json['market_cap'] == null ? 0.0 : json["market_cap"].toDouble();
    marketCapRank = json['market_cap_rank'];
    fullyDilutedValuation = json['fully_diluted_valuation'] == null
        ? 0.0
        : json["fully_diluted_valuation"].toDouble();
    totalVolume =
        json['total_volume'] == null ? 0.0 : json["total_volume"].toDouble();
    high24h = json['high_24h'] == null ? 0.0 : json["high_24h"].toDouble();
    low24h = json['low_24h'] == null ? 0.0 : json["low_24h"].toDouble();
    priceChange24h = json['price_change_24h'] == null
        ? 0.0
        : json["price_change_24h"].toDouble();
    priceChangePercentage24h = json['price_change_percentage_24h'];
    marketCapChange24h = json['market_cap_change_24h'] == null
        ? 0.0
        : json["market_cap_change_24h"].toDouble();
    marketCapChangePercentage24h = json['market_cap_change_percentage_24h'];
    circulatingSupply = json['circulating_supply'];
    totalSupply = json['total_supply'];
    maxSupply = json['max_supply'];
    ath = json['ath'] == null ? 0.0 : json["ath"].toDouble();
    athChangePercentage = json['ath_change_percentage'];
    athDate = json['ath_date'];
    atl = json['atl'] == null ? 0.0 : json["atl"].toDouble();
    atlChangePercentage = json['atl_change_percentage'];
    atlDate = json['atl_date'];
    lastUpdated = json['last_updated'];
  }
}
