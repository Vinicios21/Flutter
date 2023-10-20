import 'dart:convert';
import '../models/BitcoinModel.dart';
import 'package:http/http.dart' as http;
class BitcoinService{

  String urlGetList = "https://blockchain.info/ticker";

  dynamic _response;
  ParkingSpotService(){
    _response="";
  }

  Future<dynamic> fetchListBitcoin() async {
    _response = await http.get(Uri.parse(urlGetList));
    if (_response.statusCode == 200) {
      //Map<String, dynamic> retorno = json.decode(_response.body);
      //print(retorno);

      var list = json.decode(_response.body);
      List<BitcoinModel> listBitcoinModel = [];

      list.forEach((key, val) {
        listBitcoinModel.add((BitcoinModel.fromJson(val)));
      });

      //return ParkingSpotList.fromJson(list);
      return listBitcoinModel;
    } else {
      throw Exception('Failed to load cote');
    }
  }
}
