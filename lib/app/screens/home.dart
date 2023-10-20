import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../controllers/BitcoinControllers.dart';
import 'bitcoin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var controller = BitcoinController.bitcoinSpotController;

  @override
  void initState() {
    super.initState();
    controller.listBitcoin();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Obx(() => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: controller.bitcoin.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BitcoinPage(buy:controller
                              .bitcoin[index].buy.toString() ,sell: controller
                              .bitcoin[index].sell.toString(),)
                          ));
                        },
                        // leading:  ImageHero(controller
                        //     .bitcoin[index].image, 60.0)
                        // ,
                        title: Text(controller
                            .bitcoin[index].buy.toString()),
                        subtitle: Text(controller
                            .bitcoin[index].sell.toString()),

                      ),

                    ],
                  ),
                );
              }),
        ))
    );
  }
}