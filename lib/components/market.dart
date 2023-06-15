import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class markets extends StatelessWidget {
  markets(
      {super.key, required this.imageMarkets,
      required this.matauang,
      required this.persen,
      required this.grafik,
      required this.harga,
      required this.total});

  String imageMarkets;
  String matauang;
  String persen;
  String grafik;
  String harga;
  String total;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          Image.asset(imageMarkets),
          const SizedBox(width: 20),
          Column(
            children: [
              Text(
                matauang,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(persen)
            ],
          ),
          const SizedBox(
            width: 25,
          ),
          Image.asset(
            grafik,
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              Text(
                harga,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(total)
            ],
          )
        ],
      ),
    );
  }
}