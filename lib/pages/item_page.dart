import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context).settings.arguments;
    final String itemName = itemArgs.name.toString();
    final String itemPrice = itemArgs.price.toString();
    final String itemStok = itemArgs.stok.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text("Belanja App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            child: Text(
              "Detail Produk",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 8),
                padding: EdgeInsets.all(8),
                child: Text(
                  "Nama Produk : $itemName",
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                padding: EdgeInsets.all(8),
                child: Text(
                  "Harga         : $itemPrice",
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                padding: EdgeInsets.all(8),
                child: Text(
                  "Stok           : $itemStok",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
