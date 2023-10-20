



import 'package:bitcoin_api/app/controllers/BitcoinControllers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class ControllerBinding implements Bindings  {
  @override
  void dependencies(){
    Get.lazyPut<BitcoinController>(() => BitcoinController());

  }

}