import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BitcoinPage extends StatefulWidget {
  const BitcoinPage({super.key, required this.buy,  required this.sell});

  final String buy;
  final String sell;


  @override
  State<BitcoinPage> createState() => _BitcoinPageState();
}

class _BitcoinPageState extends State<BitcoinPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("detalhes"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(widget.buy),
          Text(widget.buy)
          // Center(
          //   child: ImageHero(widget.image, 100.0),
          // )


        ],
      ),
    );


  }
}