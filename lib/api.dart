import 'dart:convert';
import 'package:http/http.dart' as http;
import 'coin.dart';

class Api {
  List<Coin> parseCoin(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Coin>((json) => Coin.fromJson(json)).toList();
  }

  Future<List<Coin>> fetchCoin() async {
    String responseBody = "";
    int i = 1;
    while (true) {
      final response = await http.get(
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=try&order=market_cap_desc&per_page=250&page=$i&sparkline=false');
      if (i < 26) {
        if (responseBody == "") {
          responseBody += response.body.substring(1, response.body.length - 1);
        } else {
          responseBody +=
              "," + response.body.substring(1, response.body.length - 1);
        }
        i++;
      } else {
        break;
      }
    }
    List<Coin> coinlist = parseCoin("[" + responseBody + "]");
    return coinlist;
  }
}
