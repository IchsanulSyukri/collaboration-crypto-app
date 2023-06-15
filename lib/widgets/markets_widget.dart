import 'package:flutter/material.dart';
import 'package:collaboration_crypto_app/components/market.dart';

class MarketsWidgets extends StatelessWidget {
  const MarketsWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        markets(
            imageMarkets: "assets/Group 45992.png",
            matauang: "BTC",
            persen: "+ 1,6 %",
            grafik: "assets/Group 5.png",
            harga: "Rp 29,850.15",
            total: "2.73 BTC"),
        const SizedBox(height: 30),
        markets(
            imageMarkets: "assets/Group 45993.png",
            matauang: "ETH",
            persen: "- 0,82 %",
            grafik: "assets/Group 7.png",
            harga: "Rp 10.561.24",
            total: "47.61 ETH"),
        const SizedBox(height: 30),
        markets(
            imageMarkets: "assets/Group 45994.png",
            matauang: "LTC",
            persen: "- 2.10 %",
            grafik: "assets/Vector 3.2.png",
            harga: "Rp 3.676.76",
            total: "39.27 LTC"),
        const SizedBox(height: 30),
        markets(
            imageMarkets: "assets/Group 45995.png",
            matauang: "XRP",
            persen: "+ 1,6 %",
            grafik: "assets/Vector 2.2.png",
            harga: "Rp 5.241.62",
            total: "16447,65 XRP"),
        const SizedBox(height: 30),
        markets(
            imageMarkets: "assets/Group 45995.png",
            matauang: "XRP",
            persen: "+ 1,6 %",
            grafik: "assets/Vector 2.2.png",
            harga: "Rp 5.241.62",
            total: "16447,65 XRP"),
        const SizedBox(height: 30),
        markets(
            imageMarkets: "assets/Group 45995.png",
            matauang: "XRP",
            persen: "+ 1,6 %",
            grafik: "assets/Vector 2.2.png",
            harga: "Rp 5.241.62",
            total: "16447,65 XRP"),
        const SizedBox(height: 30),
      ],
    );
  }
}