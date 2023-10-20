

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/BitcoinModel.dart';
import '../services/BitcoinService.dart';

class BitcoinController extends GetxController {

  BitcoinService bitcoinService = BitcoinService();
  var isLoading = false.obs;
  List<BitcoinModel> bitcoin = <BitcoinModel>[].obs;

  static BitcoinController get bitcoinSpotController => Get.find();

  Future<dynamic> listBitcoin()  async {
    isLoading.value = true;
    var list = await bitcoinService.fetchListBitcoin();
    bitcoin.addAll(list);
    isLoading.value = false;
    update();
    return bitcoin;
  }

}
