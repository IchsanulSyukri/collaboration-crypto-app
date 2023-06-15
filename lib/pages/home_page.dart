import 'package:flutter/material.dart';
import 'package:collaboration_crypto_app/models/model.dart';
import 'package:collaboration_crypto_app/repositories/repository.dart';
import 'package:collaboration_crypto_app/widgets/markets_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  // HomePage(
  //     {
  //     super.key,
  //     required this.imageMarkets,
  //     required this.matauang,
  //     required this.persen,
  //     required this.grafik,
  //     required this.harga,
  //     required this.total});

  // final String imageMarkets;
  // final String matauang;
  // final String persen;
  // final String grafik;
  // final String harga;
  // final String total;
}

class _HomePageState extends State<HomePage> {
  // void Function()? onTap;

  List<Markets> listmarkets = [];
  Repository repository = Repository();

  getData() async {
    listmarkets = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                // Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/01.png"),
                    const Row(
                      children: [
                        Icon(Icons.search, size: 30),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.qr_code_scanner,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      "HELLO",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "ICHSANUL SYUKRI",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [Image.asset("assets/Total balance.png")],
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Markets",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Color(0xff0A6CFF)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                // add here
                const MarketsWidgets()
              ],
            ),
          ),
        ),
      ),
    );
  }
}