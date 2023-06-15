class Markets {
  final String imageMarkets;
  final String matauang;
  final String persen;
  final String grafik;
  final String harga;
  final String total;

  const Markets(
      {required this.imageMarkets,
      required this.matauang,
      required this.persen,
      required this.grafik,
      required this.harga,
      required this.total});

  factory Markets.fromJson(Map<String, dynamic> json) {
    return Markets(
      imageMarkets: json['imageMarkets'],
      matauang: json['matauang'],
      persen: json['persen'],
      grafik: json['grafik'],
      harga: json['harga'],
      total: json['total'],
    );
  }
}