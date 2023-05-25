import 'package:card_swiper/card_swiper.dart';
import 'package:ferizy/cari_pesanan_view.dart';
import 'package:ferizy/customer_service_view.dart';
import 'package:ferizy/data_penumpang_view.dart';
import 'package:ferizy/faq_view.dart';
import 'package:ferizy/informasi_kapal_view.dart';
import 'package:ferizy/pantau_kapal_view.dart';
import 'package:ferizy/ramalan_cuaca_view.dart';
import 'package:ferizy/ringkasan_pesanan_view.dart';
import 'package:ferizy/wheel_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:select_modal_flutter/select_modal_flutter.dart';

class BerandaPage extends StatefulWidget {
  BerandaPage({Key? key}) : super(key: key);

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  final List<String> listAsal = [
    "Bakauheni",
    "Gilimanuk",
    "Ketapang",
    "Merak",
    "Ajibata",
    "Ambarita"
  ];

  final List<String> listAsalKota = [
    "Lampung",
    "Bali",
    "Jawa Timur",
    "Banten",
    "Sumatra Utara",
    "Sumatra Utara"
  ];

  final List<String> listLayanan = ["Reguler", "Express"];
  final List<String> listJasa = ["Pejalan Kaki", "Kendaraan"];

  final List<String> listKendaraanRoda2 = [
    "Golongan I",
    "Golongan II",
    "Golongan III"
  ];
  final List<String> listKendaraanRoda2Desc = [
    "Sepeda kayuh",
    "Sepeda motor dibawah 500cc dan gerobak dorong",
    "Sepeda motor diatas 500cc dan kendaraan roda tiga"
  ];
  final List<String> listHargaKendaraanRoda2 = [
    "Rp 23.500",
    "Rp 54.500",
    "Rp 116.000"
  ];
  final List<Image> listIconKendaraanRoda2 = [
    Image.asset(
      "assets/images/sepeda.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/motor-kurang-500.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/motor-lebih-500.png",
      scale: 3,
    )
  ];

  final List<String> listKendaraanRoda4 = [
    "Golongan IVA",
    "Golongan IVB",
    "Golongan VA",
    "Golongan VB"
  ];

  final List<String> listKendaraanRoda4Desc = [
    "Kendaraan penumpang (mobil, jeep, sedan, minicab, minibus, mikrolet, station wagon) < meter",
    "Kendaraan barang (pick up) > 5 meter",
    "Kendaraan penumpang (mobil, bus sedang) < 7 meter",
    "Kendaraan barang (mobil/truk barang/tangki) < 7 meter"
  ];

  final List<String> listHargaKendaraanRoda4 = [
    "Rp 419.000",
    "Rp 388.000",
    "Rp 839.000",
    "Rp 724.000"
  ];

  final List<Image> listIconKendaraanRoda4 = [
    Image.asset(
      "assets/images/car-kecil.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/pick-up.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/bus-kecil.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/truk-kecil.png",
      scale: 3,
    )
  ];

  List<String> listKendaraanBesar = [
    "Golongan VIA",
    "Golongan VIB",
    "Golongan VII",
    "Golongan VIII",
    "Golongan IX"
  ];

  List<String> listKendaraanBesarDesc = [
    "Kendaraan penumpang (mobil, bus besar) < 10 meter",
    "Kendaraan barang (mobil/truk barang/tangki penarik tanpa gandengan) < 10 meter",
    "Kendaraan (mobil barang, truk tronton, tangki, kereta penarik dengan gandengan, kendaraan alat berat) < 12 meter",
    "Kendaraan (mobil barang, truk tronton, tangki, kereta penarik dengan gandengan, kendaraan alat berat) < 16 meter",
    "Kendaraan (mobil barang, truk tronton, tangki, kereta penarik dengan gandengan, kendaraan alat berat) > 16 meter"
  ];

  List<String> listHargaKendaraanBesar = [
    "Rp 1.388.500",
    "Rp 1.113.000",
    "Rp 1.615.000",
    "Rp 2.161.000",
    "Rp 3.361.000"
  ];

  List<Image> listIconKenaraanBesar = [
    Image.asset(
      "assets/images/bus-besar.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/truk-kurang-10.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/truk-kurang-12.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/truk-kurang-16.png",
      scale: 3,
    ),
    Image.asset(
      "assets/images/truk-lebih-16.png",
      scale: 3,
    )
  ];

  final List<String> listJam = [
    "06.00 - 07.00",
    "07.00 - 08.00",
    "08.00 - 09.00",
    "09.00 - 10.00",
    "10.00 - 11.00",
    "11.00 - 12.00",
    "12.00 - 13.00",
    "13.00 - 14.00",
    "14.00 - 15.00",
    "15.00 - 16.00",
    "16.00 - 17.00",
    "17.00 - 18.00",
    "18.00 - 19.00",
    "19.00 - 20.00",
    "20.00 - 21.00",
    "21.00 - 22.00",
    "22.00 - 23.00",
    "23.00 - 00.00",
    "00.00 - 01.00",
    "01.00 - 02.00",
    "02.00 - 03.00",
    "03.00 - 04.00",
    "04.00 - 05.00",
    "05.00 - 06.00"
  ];

  List<String> listPenumpang = ["0", "1", "2", "3", "4"];

  final _asal = TextEditingController();
  final _tujuan = TextEditingController();
  final _layanan = TextEditingController();
  final _jasa = TextEditingController();
  final _golongan = TextEditingController();
  final _tanggal = TextEditingController();
  final _jam = TextEditingController();
  final _penumpang = TextEditingController();

  String? kotaAsal;
  String? kotaTujuan;
  String? hargaGolongan;

  String? selectGolongan;

  int _selectedIndex = 0;
  int _selectedIndexDewasa = 0;
  int _selectedIndexAnak = 0;
  int _selectedIndexBayi = 0;

  String monthToString(int month) {
    switch (month) {
      case 1:
        return "Januari";
      case 2:
        return "Februari";
      case 3:
        return "Maret";
      case 4:
        return "April";
      case 5:
        return "Mei";
      case 6:
        return "Juni";
      case 7:
        return "Juli";
      case 8:
        return "Agustus";
      case 9:
        return "September";
      case 10:
        return "Oktober";
      case 11:
        return "November";
      default:
        return "Desember";
    }
  }

  Widget _buildTextFiled() {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Golongan Kendaraan",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return Scaffold(
                      appBar: AppBar(
                        backgroundColor: HexColor("#0D54A5"),
                        elevation: 0,
                        toolbarHeight: 100,
                        automaticallyImplyLeading: false,
                        bottom: PreferredSize(
                          child: Container(
                            margin: const EdgeInsets.only(
                              left: 10.0,
                              right: 10.0,
                              bottom: 10.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Expanded(
                                    child: Text(
                                  "GOLONGAN KENDARAAN",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ))
                              ],
                            ),
                          ),
                          preferredSize: const Size.fromHeight(16.0),
                        ),
                      ),
                      body: SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.all(20.0),
                          child: Column(children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Kendaraan Roda 2",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: ListView.separated(
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return const Divider(
                                      color: Colors.grey,
                                      thickness: 1.0,
                                    );
                                  },
                                  itemCount: listKendaraanRoda2.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      title: Text(
                                        listKendaraanRoda2[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      subtitle:
                                          Text(listKendaraanRoda2Desc[index]),
                                      leading: listIconKendaraanRoda2[index],
                                      trailing: Text(
                                        listHargaKendaraanRoda2[index],
                                        style: TextStyle(
                                            color: HexColor("#0D54A5"),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      onTap: () {
                                        _golongan.text =
                                            listKendaraanRoda2[index];
                                        hargaGolongan =
                                            listHargaKendaraanRoda2[index];
                                        Navigator.pop(context);
                                      },
                                    );
                                  }),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Kendaraan Roda 4",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 330,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: ListView.separated(
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return const Divider(
                                      color: Colors.grey,
                                      thickness: 1.0,
                                    );
                                  },
                                  itemCount: listKendaraanRoda4.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      title: Text(
                                        listKendaraanRoda4[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      subtitle:
                                          Text(listKendaraanRoda4Desc[index]),
                                      leading: listIconKendaraanRoda4[index],
                                      trailing: Text(
                                        listHargaKendaraanRoda4[index],
                                        style: TextStyle(
                                            color: HexColor("#0D54A5"),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      onTap: () {
                                        _golongan.text =
                                            listKendaraanRoda4[index];
                                        hargaGolongan =
                                            listHargaKendaraanRoda4[index];
                                        Navigator.pop(context);
                                      },
                                    );
                                  }),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Kendaraan Besar",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 525,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: ListView.separated(
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return const Divider(
                                      color: Colors.grey,
                                      thickness: 1.0,
                                    );
                                  },
                                  itemCount: listKendaraanBesar.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      title: Text(
                                        listKendaraanBesar[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      subtitle:
                                          Text(listKendaraanBesarDesc[index]),
                                      leading: listIconKenaraanBesar[index],
                                      trailing: Text(
                                        listHargaKendaraanBesar[index],
                                        style: TextStyle(
                                            color: HexColor("#0D54A5"),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      onTap: () {
                                        _golongan.text =
                                            listKendaraanBesar[index];
                                        hargaGolongan =
                                            listHargaKendaraanBesar[index];
                                        Navigator.pop(context);
                                      },
                                    );
                                  }),
                            ),
                          ]),
                        ),
                      ));
                });
          },
          child: AbsorbPointer(
            child: TextField(
              enabled: false,
              controller: _golongan,
              decoration: InputDecoration(
                  hintText: "Pilih Golongan Kendaraan",
                  prefixIcon: Image.asset(
                    "assets/images/car-icon.png",
                    scale: 1.7,
                  )),
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _asal.dispose();
    _tujuan.dispose();
    _layanan.dispose();
    _jasa.dispose();
    super.dispose();
  }

  final List<Widget> steps = [
    InkWell(
      child: Card(
        color: HexColor("#FAFAFA"),
        elevation: 0.5,
        child: Image.asset(
          "assets/images/slider-1.png",
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    InkWell(
      child: Card(
        color: HexColor("#FAFAFA"),
        elevation: 0.5,
        child: Image.asset(
          "assets/images/slider-1.png",
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    )
  ];

  final List<Widget> forms = [];
  final List<Widget> detailHarga = [];

  @override
  Widget build(BuildContext context) {
    String? selectedItem;
    String? selectedLayanan;
    String? selectedJasa;
    String? selectedGolongan;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/ferizy-logo-white.png",
          height: 100,
        ),
        centerTitle: true,
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: HexColor("#F0F0F2"),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 100,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return steps[index];
                },
                itemCount: 2,
                pagination: const SwiperPagination(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            IntrinsicHeight(
              child: Container(
                child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Form(
                              child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Asal",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Dialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          AppBar(
                                                            title: const Text(
                                                                "PELABUHAN ASAL"),
                                                            centerTitle: true,
                                                            backgroundColor:
                                                                HexColor(
                                                                    "#0D54A5"),
                                                            elevation: 0,
                                                            toolbarHeight: 60,
                                                            leading: IconButton(
                                                              icon: const Icon(
                                                                  Icons.close),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 450,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: ListView
                                                                .builder(
                                                                    itemCount:
                                                                        listAsal
                                                                            .length,
                                                                    itemBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            int index) {
                                                                      return ListTile(
                                                                        title: Text(
                                                                            listAsal[index]),
                                                                        subtitle:
                                                                            Text(listAsalKota[index]),
                                                                        onTap:
                                                                            () {
                                                                          selectedItem =
                                                                              listAsal[index];
                                                                          kotaAsal =
                                                                              listAsalKota[index];
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                      );
                                                                    }),
                                                          ),
                                                        ],
                                                      ),
                                                    ));
                                              }).then((value) {
                                            if (selectedItem != null) {
                                              _asal.text = selectedItem!;
                                            }
                                            _asal.text == "Merak"
                                                ? _tujuan.text = "Bakauheni"
                                                : _asal.text == "Bakauheni"
                                                    ? _tujuan.text = "Merak"
                                                    : _asal.text == "Ketapang"
                                                        ? _tujuan.text =
                                                            "Gilimanuk"
                                                        : _asal.text ==
                                                                "Gilimanuk"
                                                            ? _tujuan.text =
                                                                "Ketapang"
                                                            : _asal.text ==
                                                                    "Ajibata"
                                                                ? _tujuan.text =
                                                                    "Ambarita"
                                                                : _asal.text ==
                                                                        "Ambarita"
                                                                    ? _tujuan
                                                                            .text =
                                                                        "Ajibata"
                                                                    : null;
                                            _tujuan.text == "Bakauheni"
                                                ? kotaTujuan = "Lampung"
                                                : _tujuan.text == "Merak"
                                                    ? kotaTujuan = "Banten"
                                                    : _tujuan.text == "Ketapang"
                                                        ? kotaTujuan =
                                                            "Jawa Timur"
                                                        : _tujuan.text ==
                                                                "Gilimanuk"
                                                            ? kotaTujuan =
                                                                "Bali"
                                                            : _tujuan.text ==
                                                                    "Ajibata"
                                                                ? kotaTujuan =
                                                                    "Sumatra Utara"
                                                                : kotaTujuan =
                                                                    "Sumatra Utara";
                                          });
                                        },
                                        child: AbsorbPointer(
                                          child: TextField(
                                            enabled: false,
                                            controller: _asal,
                                            decoration: InputDecoration(
                                                hintText: "Pilih Asal",
                                                prefixIcon: Image.asset(
                                                  "assets/images/ferry-asal.png",
                                                  scale: 1.7,
                                                )),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                  GestureDetector(
                                    onTap: () {
                                      String? swapAsalTemp,
                                          swapTujuanTemp,
                                          swapKotaAsal,
                                          swapKotaTujuan;
                                      swapAsalTemp = _asal.text;
                                      swapTujuanTemp = _tujuan.text;
                                      swapKotaAsal = kotaAsal;
                                      swapKotaTujuan = kotaTujuan;
                                      _asal.text = swapTujuanTemp;
                                      _tujuan.text = swapAsalTemp;
                                      kotaAsal = swapKotaTujuan;
                                      kotaTujuan = swapKotaAsal;
                                    },
                                    child: Icon(
                                      Icons.swap_horiz,
                                      color: HexColor("#0D54A5"),
                                    ),
                                  ),
                                  Expanded(
                                      child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Tujuan",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      TextField(
                                        enabled: false,
                                        textAlign: TextAlign.right,
                                        controller: _tujuan,
                                        decoration: InputDecoration(
                                            hintText: "Pilih Tujuan",
                                            suffixIcon: Image.asset(
                                              "assets/images/ferry-tujuan.png",
                                              scale: 1.7,
                                            )),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Kelas Layanan",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Dialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          AppBar(
                                                            title: const Text(
                                                                "KELAS LAYANAN"),
                                                            centerTitle: true,
                                                            backgroundColor:
                                                                HexColor(
                                                                    "#0D54A5"),
                                                            elevation: 0,
                                                            toolbarHeight: 60,
                                                            leading: IconButton(
                                                              icon: const Icon(
                                                                  Icons.close),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 150,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: ListView
                                                                .builder(
                                                                    itemCount:
                                                                        listLayanan
                                                                            .length,
                                                                    itemBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            int index) {
                                                                      return ListTile(
                                                                        title: Text(
                                                                            listLayanan[index]),
                                                                        onTap:
                                                                            () {
                                                                          selectedLayanan =
                                                                              listLayanan[index];
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                      );
                                                                    }),
                                                          ),
                                                        ],
                                                      ),
                                                    ));
                                              }).then((value) {
                                            if (selectedLayanan != null) {
                                              _layanan.text = selectedLayanan!;
                                            }
                                          });
                                        },
                                        child: AbsorbPointer(
                                          child: TextField(
                                            enabled: false,
                                            controller: _layanan,
                                            decoration: InputDecoration(
                                                hintText: "Pilih Layanan",
                                                prefixIcon: Image.asset(
                                                  "assets/images/layanan.png",
                                                  scale: 1.7,
                                                )),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "Jenis Pengguna Jasa",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Dialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          AppBar(
                                                            title: const Text(
                                                                "PENGGUNA JASA"),
                                                            centerTitle: true,
                                                            backgroundColor:
                                                                HexColor(
                                                                    "#0D54A5"),
                                                            elevation: 0,
                                                            toolbarHeight: 60,
                                                            leading: IconButton(
                                                              icon: const Icon(
                                                                  Icons.close),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 150,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: ListView
                                                                .builder(
                                                                    itemCount:
                                                                        listJasa
                                                                            .length,
                                                                    itemBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            int index) {
                                                                      return ListTile(
                                                                        title: Text(
                                                                            listJasa[index]),
                                                                        onTap:
                                                                            () {
                                                                          selectedJasa =
                                                                              listJasa[index];
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                      );
                                                                    }),
                                                          ),
                                                        ],
                                                      ),
                                                    ));
                                              }).then((value) {
                                            if (selectedJasa != null) {
                                              _jasa.text = selectedJasa!;
                                            }

                                            if (_jasa.text == "Kendaraan") {
                                              setState(() {
                                                forms.clear();
                                                forms.add(_buildTextFiled());
                                              });
                                            } else {
                                              setState(() {
                                                forms.clear();
                                              });
                                            }
                                          });
                                        },
                                        child: AbsorbPointer(
                                          child: TextField(
                                            enabled: false,
                                            controller: _jasa,
                                            textAlign: TextAlign.right,
                                            decoration: InputDecoration(
                                                hintText: "Berkendara?",
                                                suffixIcon: Image.asset(
                                                  "assets/images/jasa.png",
                                                  scale: 1.7,
                                                )),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ...forms,
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Tanggal Check In",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime(2023, 4, 5),
                                                      firstDate:
                                                          DateTime(2023, 4),
                                                      lastDate: DateTime(
                                                          2023,
                                                          DateTime.now().month +
                                                              3))
                                                  .then((value) {
                                                setState(() {
                                                  _tanggal.text =
                                                      value!.day.toString() +
                                                          " " +
                                                          monthToString(
                                                              value.month) +
                                                          " " +
                                                          value.year.toString();
                                                });
                                              });
                                            },
                                            child: AbsorbPointer(
                                              child: TextField(
                                                enabled: false,
                                                controller: _tanggal,
                                                decoration: InputDecoration(
                                                    hintText: "Pilih Tanggal",
                                                    prefixIcon: Image.asset(
                                                      "assets/images/calendar.png",
                                                      scale: 1.7,
                                                    )),
                                              ),
                                            ),
                                          )
                                        ],
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              "Jam Check In",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              AppBar(
                                                                title: const Text(
                                                                    "JAM CHECK IN"),
                                                                centerTitle:
                                                                    true,
                                                                backgroundColor:
                                                                    HexColor(
                                                                        "#0D54A5"),
                                                                elevation: 0,
                                                                toolbarHeight:
                                                                    60,
                                                                leading:
                                                                    IconButton(
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .close),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 150,
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(10),
                                                                child:
                                                                    CupertinoPicker(
                                                                        itemExtent:
                                                                            70,
                                                                        onSelectedItemChanged: (int
                                                                            index) {
                                                                          setState(
                                                                              () {
                                                                            _selectedIndex =
                                                                                index;
                                                                          });
                                                                        },
                                                                        children: List<Widget>.generate(
                                                                            listJam.length,
                                                                            (int
                                                                                index) {
                                                                          return Center(
                                                                            child:
                                                                                Text(listJam[index]),
                                                                          );
                                                                        })),
                                                              ),
                                                              Divider(),
                                                              Container(
                                                                height: 70,
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(10),
                                                                child: Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            OutlinedButton(
                                                                          child:
                                                                              Text(
                                                                            "Batal",
                                                                            style: TextStyle(
                                                                                color: HexColor("#FE914C"),
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 20),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(context).pop();
                                                                          },
                                                                          style:
                                                                              OutlinedButton.styleFrom(
                                                                            side:
                                                                                BorderSide(width: 1, color: HexColor("#FE914C")),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        width:
                                                                            10,
                                                                      ),
                                                                      Expanded(
                                                                          child:
                                                                              MaterialButton(
                                                                        onPressed:
                                                                            () {
                                                                          _jam.text =
                                                                              listJam[_selectedIndex];
                                                                          Navigator.of(context)
                                                                              .pop();
                                                                        },
                                                                        elevation:
                                                                            0,
                                                                        minWidth: MediaQuery.of(context)
                                                                            .size
                                                                            .width,
                                                                        color: HexColor(
                                                                            "#FE914C"),
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          "Pilih",
                                                                          style: const TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Colors.white),
                                                                        ),
                                                                      ))
                                                                    ]),
                                                              )
                                                            ],
                                                          ),
                                                        ));
                                                  }).then((value) {
                                                _jam.text = value;
                                              });
                                            },
                                            child: AbsorbPointer(
                                              child: TextField(
                                                enabled: false,
                                                controller: _jam,
                                                textAlign: TextAlign.right,
                                                decoration: InputDecoration(
                                                    hintText: "Pilih Jam",
                                                    suffixIcon: Image.asset(
                                                      "assets/images/jam.png",
                                                      scale: 1.7,
                                                    )),
                                              ),
                                            ),
                                          )
                                        ],
                                      ))
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Penumpang",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _selectedIndexDewasa = 0;
                                      _selectedIndexAnak = 0;
                                      _selectedIndexBayi = 0;
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      AppBar(
                                                        title: const Text(
                                                            "PENUMPANG"),
                                                        centerTitle: true,
                                                        backgroundColor:
                                                            HexColor("#0D54A5"),
                                                        elevation: 0,
                                                        toolbarHeight: 60,
                                                        leading: IconButton(
                                                          icon: const Icon(
                                                              Icons.close),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                      ),
                                                      Container(
                                                          height: 160,
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10),
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                  child: Column(
                                                                children: [
                                                                  SizedBox(
                                                                    height: 20,
                                                                  ),
                                                                  const Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "Dewasa",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "Usia > 6 tahun",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  CupertinoPicker(
                                                                      itemExtent:
                                                                          70,
                                                                      onSelectedItemChanged: (int
                                                                          index) {
                                                                        setState(
                                                                            () {
                                                                          _selectedIndexDewasa =
                                                                              index;
                                                                        });
                                                                      },
                                                                      children: List<
                                                                              Widget>.generate(
                                                                          listPenumpang
                                                                              .length,
                                                                          (int
                                                                              index) {
                                                                        return Center(
                                                                          child:
                                                                              Text(listPenumpang[index]),
                                                                        );
                                                                      })),
                                                                ],
                                                              )),
                                                              Expanded(
                                                                  child: Column(
                                                                children: [
                                                                  SizedBox(
                                                                    height: 20,
                                                                  ),
                                                                  const Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "Anak",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "Usia 2-5 tahun",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  CupertinoPicker(
                                                                      itemExtent:
                                                                          70,
                                                                      onSelectedItemChanged: (int
                                                                          index) {
                                                                        setState(
                                                                            () {
                                                                          _selectedIndexAnak =
                                                                              index;
                                                                        });
                                                                      },
                                                                      children: List<
                                                                              Widget>.generate(
                                                                          listPenumpang
                                                                              .length,
                                                                          (int
                                                                              index) {
                                                                        return Center(
                                                                          child:
                                                                              Text(listPenumpang[index]),
                                                                        );
                                                                      })),
                                                                ],
                                                              )),
                                                              Expanded(
                                                                  child: Column(
                                                                children: [
                                                                  SizedBox(
                                                                    height: 20,
                                                                  ),
                                                                  const Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "Bayi",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                      "Usia < 2 tahun",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  CupertinoPicker(
                                                                      itemExtent:
                                                                          70,
                                                                      onSelectedItemChanged: (int
                                                                          index) {
                                                                        setState(
                                                                            () {
                                                                          _selectedIndexBayi =
                                                                              index;
                                                                        });
                                                                      },
                                                                      children: List<
                                                                              Widget>.generate(
                                                                          listPenumpang
                                                                              .length,
                                                                          (int
                                                                              index) {
                                                                        return Center(
                                                                          child:
                                                                              Text(listPenumpang[index]),
                                                                        );
                                                                      })),
                                                                ],
                                                              ))
                                                            ],
                                                          )),
                                                      Divider(),
                                                      Container(
                                                        height: 70,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        child: Row(children: [
                                                          Expanded(
                                                            child:
                                                                OutlinedButton(
                                                              child: Text(
                                                                "Batal",
                                                                style: TextStyle(
                                                                    color: HexColor(
                                                                        "#FE914C"),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        20),
                                                              ),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              style:
                                                                  OutlinedButton
                                                                      .styleFrom(
                                                                side: BorderSide(
                                                                    width: 1,
                                                                    color: HexColor(
                                                                        "#FE914C")),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Expanded(
                                                              child:
                                                                  MaterialButton(
                                                            onPressed: () {
                                                              if (int.parse(listPenumpang[_selectedIndexDewasa]) > 0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexAnak]) ==
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexBayi]) ==
                                                                      0) {
                                                                _penumpang
                                                                        .text =
                                                                    listPenumpang[
                                                                            _selectedIndexDewasa] +
                                                                        " Dewasa";
                                                              } else if (int.parse(
                                                                          listPenumpang[
                                                                              _selectedIndexDewasa]) ==
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexAnak]) >
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexBayi]) ==
                                                                      0) {
                                                                _penumpang
                                                                        .text =
                                                                    listPenumpang[
                                                                            _selectedIndexAnak] +
                                                                        " Anak";
                                                              } else if (int.parse(
                                                                          listPenumpang[
                                                                              _selectedIndexDewasa]) ==
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexAnak]) ==
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexBayi]) >
                                                                      0) {
                                                                _penumpang
                                                                        .text =
                                                                    listPenumpang[
                                                                            _selectedIndexBayi] +
                                                                        " Bayi";
                                                              } else if (int.parse(
                                                                          listPenumpang[
                                                                              _selectedIndexDewasa]) >
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexAnak]) >
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexBayi]) ==
                                                                      0) {
                                                                _penumpang
                                                                    .text = listPenumpang[
                                                                        _selectedIndexDewasa] +
                                                                    " Dewasa, " +
                                                                    listPenumpang[
                                                                        _selectedIndexAnak] +
                                                                    " Anak";
                                                              } else if (int.parse(
                                                                          listPenumpang[
                                                                              _selectedIndexDewasa]) >
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexAnak]) ==
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexBayi]) >
                                                                      0) {
                                                                _penumpang
                                                                    .text = listPenumpang[
                                                                        _selectedIndexDewasa] +
                                                                    " Dewasa, " +
                                                                    listPenumpang[
                                                                        _selectedIndexBayi] +
                                                                    " Bayi";
                                                              } else if (int.parse(
                                                                          listPenumpang[
                                                                              _selectedIndexDewasa]) ==
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexAnak]) >
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexBayi]) >
                                                                      0) {
                                                                _penumpang
                                                                    .text = listPenumpang[
                                                                        _selectedIndexAnak] +
                                                                    " Anak, " +
                                                                    listPenumpang[
                                                                        _selectedIndexBayi] +
                                                                    " Bayi";
                                                              } else if (int.parse(
                                                                          listPenumpang[
                                                                              _selectedIndexDewasa]) >
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexAnak]) >
                                                                      0 &&
                                                                  int.parse(listPenumpang[
                                                                          _selectedIndexBayi]) >
                                                                      0) {
                                                                _penumpang
                                                                    .text = listPenumpang[
                                                                        _selectedIndexDewasa] +
                                                                    " Dewasa, " +
                                                                    listPenumpang[
                                                                        _selectedIndexAnak] +
                                                                    " Anak," +
                                                                    listPenumpang[
                                                                        _selectedIndexBayi] +
                                                                    " Bayi";
                                                              } else {
                                                                _penumpang
                                                                        .text =
                                                                    "1 Dewasa";
                                                              }
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            elevation: 0,
                                                            minWidth:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            color: HexColor(
                                                                "#FE914C"),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Text(
                                                              "Pilih",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ))
                                                        ]),
                                                      )
                                                    ],
                                                  ),
                                                ));
                                          }).then((value) {
                                        _jam.text = value;
                                      });
                                    },
                                    child: AbsorbPointer(
                                      child: TextField(
                                        enabled: false,
                                        controller: _penumpang,
                                        textAlign: TextAlign.left,
                                        decoration: InputDecoration(
                                            hintText:
                                                "Mauskkan Jumlah Penumpang",
                                            prefixIcon: Image.asset(
                                              "assets/images/penumpang.png",
                                              scale: 1.7,
                                            )),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                height: 50,
                                elevation: 0,
                                minWidth: MediaQuery.of(context).size.width,
                                color: HexColor("#FE914C"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  AppBar(
                                                    title:
                                                        const Text("KEBIJAKAN"),
                                                    centerTitle: true,
                                                    backgroundColor:
                                                        HexColor("#0D54A5"),
                                                    elevation: 0,
                                                    toolbarHeight: 60,
                                                    leading: IconButton(
                                                      icon: const Icon(
                                                          Icons.close),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 450,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(children: [
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('1. '),
                                                          Expanded(
                                                              child: Text(
                                                                  'Kendaraan Over Dimension dan Over Loading (ODOL) tidak diperkenankan memasuki area pelabuhan')),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('2. '),
                                                          Expanded(
                                                              child: Text(
                                                                  'Anda sudah dapat masuk pelabuhan (check in) mulai dari 2 (dua) jam sebelum jadwal masuk pelabuhan yang Anda pilih')),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('3. '),
                                                          Expanded(
                                                              child: Text(
                                                                  'Tiket akan hangus (expired) apabila Anda belum masuk pelabuhan (check in) hingga melewati batas waktu jadwal masuk pelabuhan yang Anda pilih')),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('4. '),
                                                          Expanded(
                                                              child: Text(
                                                                  'Nama penumpang harus sesuai dengan kartu identitas (KTP/SIM/Paspor/Dll)')),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('5. '),
                                                          Expanded(
                                                              child: Text(
                                                                  'Jumlah penumpang dan nomor polisi kendaraan harus sesuai dengan jumlah penumpang dan nomor polisi kendaraan yang akan menyeberang')),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('6. '),
                                                          Expanded(
                                                              child: Text(
                                                                  'Jadwal dan nama kapal keberangkatan dapat berubah sewaktu-waktu mengikuti kondisi cuaca dan operasional pelabuhan tanpa pemberitahuan terlebih dahuli')),
                                                        ],
                                                      ),
                                                      Divider(),
                                                      Container(
                                                        child: Row(children: [
                                                          Expanded(
                                                            child:
                                                                OutlinedButton(
                                                              child: Text(
                                                                "Tidak Setuju",
                                                                style:
                                                                    TextStyle(
                                                                  color: HexColor(
                                                                      "#FE914C"),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 15,
                                                                ),
                                                              ),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              style:
                                                                  OutlinedButton
                                                                      .styleFrom(
                                                                side: BorderSide(
                                                                    width: 1,
                                                                    color: HexColor(
                                                                        "#FE914C")),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Expanded(
                                                              child:
                                                                  MaterialButton(
                                                            onPressed: () {
                                                              showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  useRootNavigator:
                                                                      true,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                                    return Scaffold(
                                                                        appBar:
                                                                            AppBar(
                                                                          backgroundColor:
                                                                              HexColor("#0D54A5"),
                                                                          elevation:
                                                                              0,
                                                                          toolbarHeight:
                                                                              100,
                                                                          automaticallyImplyLeading:
                                                                              false,
                                                                          bottom:
                                                                              PreferredSize(
                                                                            child:
                                                                                Container(
                                                                              margin: const EdgeInsets.only(
                                                                                left: 10.0,
                                                                                right: 10.0,
                                                                                bottom: 10.0,
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  IconButton(
                                                                                    icon: const Icon(
                                                                                      Icons.close,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                    onPressed: () {
                                                                                      Navigator.of(context).pop();
                                                                                    },
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    width: 65,
                                                                                  ),
                                                                                  const Expanded(
                                                                                      child: Text(
                                                                                    "JADWAL KAPAL",
                                                                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                                                                                  ))
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            preferredSize:
                                                                                const Size.fromHeight(16.0),
                                                                          ),
                                                                        ),
                                                                        body:
                                                                            SingleChildScrollView(
                                                                          child:
                                                                              Container(
                                                                            margin:
                                                                                const EdgeInsets.all(20.0),
                                                                            child:
                                                                                Column(children: [
                                                                              const Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "Detail Keberangkatan",
                                                                                  style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 20,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              const SizedBox(
                                                                                height: 10,
                                                                              ),
                                                                              Container(
                                                                                  height: 200,
                                                                                  padding: EdgeInsets.all(20),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(5),
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        color: Colors.grey.withOpacity(0.5),
                                                                                        spreadRadius: 0,
                                                                                        blurRadius: 7,
                                                                                        offset: const Offset(0, 3),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width,
                                                                                  child: Column(
                                                                                    children: [
                                                                                      Row(
                                                                                        children: [
                                                                                          Image.asset(
                                                                                            "assets/images/ferry.png",
                                                                                            scale: 1.8,
                                                                                          ),
                                                                                          SizedBox(
                                                                                            width: 5,
                                                                                          ),
                                                                                          Text(
                                                                                            _tanggal.text,
                                                                                            style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 15,
                                                                                      ),
                                                                                      Row(
                                                                                        children: [
                                                                                          Expanded(
                                                                                              child: Column(children: [
                                                                                            Text(_asal.text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
                                                                                            Text(kotaAsal!, style: TextStyle(color: Colors.grey, fontSize: 14), textAlign: TextAlign.center)
                                                                                          ])),
                                                                                          Expanded(child: Image.asset("assets/images/to.png")),
                                                                                          Expanded(
                                                                                              child: Column(children: [
                                                                                            Text(_tujuan.text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
                                                                                            Text(kotaTujuan!, style: TextStyle(color: Colors.grey, fontSize: 14), textAlign: TextAlign.center)
                                                                                          ])),
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 15,
                                                                                      ),
                                                                                      Text(_jam.text + " WIB", style: TextStyle(fontSize: 16, color: Colors.grey)),
                                                                                      SizedBox(
                                                                                        height: 10,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Text(_jasa.text + " (" + _golongan.text + ")", style: TextStyle(fontSize: 16, color: Colors.grey)),
                                                                                          SizedBox(width: 10),
                                                                                          CircleAvatar(
                                                                                            radius: 4.0,
                                                                                            backgroundColor: Colors.grey,
                                                                                          ),
                                                                                          SizedBox(
                                                                                            width: 10,
                                                                                          ),
                                                                                          Text(_layanan.text, style: TextStyle(fontSize: 16, color: Colors.grey)),
                                                                                        ],
                                                                                      )
                                                                                    ],
                                                                                  )),
                                                                              const SizedBox(
                                                                                height: 20,
                                                                              ),
                                                                              const Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Text(
                                                                                  "Detail Harga",
                                                                                  style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 20,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              const SizedBox(
                                                                                height: 10,
                                                                              ),
                                                                              IntrinsicHeight(
                                                                                child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      color: Colors.white,
                                                                                      borderRadius: BorderRadius.circular(5),
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          color: Colors.grey.withOpacity(0.5),
                                                                                          spreadRadius: 0,
                                                                                          blurRadius: 7,
                                                                                          offset: const Offset(0, 3),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    width: MediaQuery.of(context).size.width,
                                                                                    child: Column(
                                                                                      children: [
                                                                                        IntrinsicHeight(
                                                                                          child: Container(
                                                                                            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text(_jasa.text + " " + _golongan.text + " x1", textAlign: TextAlign.left, style: TextStyle(fontSize: 16)),
                                                                                                Expanded(
                                                                                                  child: Text(hargaGolongan!, textAlign: TextAlign.right, style: TextStyle(fontSize: 16)),
                                                                                                )
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Divider(color: Colors.grey),
                                                                                        IntrinsicHeight(
                                                                                          child: Container(
                                                                                            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text("Dewasa x1", textAlign: TextAlign.left, style: TextStyle(fontSize: 16)),
                                                                                                Expanded(child: Text("Rp 0", textAlign: TextAlign.right, style: TextStyle(fontSize: 16)))
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Divider(
                                                                                          color: Colors.grey,
                                                                                        ),
                                                                                        IntrinsicHeight(
                                                                                          child: Container(
                                                                                            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text("Anak x1", textAlign: TextAlign.left, style: TextStyle(fontSize: 16)),
                                                                                                Expanded(child: Text("Rp 0", textAlign: TextAlign.right, style: TextStyle(fontSize: 16)))
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        IntrinsicHeight(
                                                                                          child: Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: HexColor("#0D54A5"),
                                                                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
                                                                                            ),
                                                                                            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                Text("Total Harga", textAlign: TextAlign.left, style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500)),
                                                                                                Expanded(child: Text(hargaGolongan!, textAlign: TextAlign.right, style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500)))
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                    )),
                                                                              ),
                                                                              const SizedBox(
                                                                                height: 20,
                                                                              ),
                                                                              Container(
                                                                                  height: 80,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.orange[100],
                                                                                    borderRadius: BorderRadius.circular(5),
                                                                                  ),
                                                                                  width: MediaQuery.of(context).size.width,
                                                                                  padding: EdgeInsets.all(20),
                                                                                  child: Center(
                                                                                      child: Row(
                                                                                    children: [
                                                                                      Icon(Icons.info_outline, color: Colors.orange),
                                                                                      SizedBox(
                                                                                        width: 10,
                                                                                      ),
                                                                                      Expanded(
                                                                                          child: Text(
                                                                                        "Kuota tersedia (10000). Nama kapal akan diinformasikan saat tiba di pelabuhan",
                                                                                        style: TextStyle(fontSize: 16, color: Colors.orange),
                                                                                      ))
                                                                                    ],
                                                                                  ))),
                                                                              Container(
                                                                                height: 70,
                                                                                child: Row(children: [
                                                                                  Expanded(
                                                                                    child: OutlinedButton(
                                                                                      child: Text(
                                                                                        "Batal",
                                                                                        style: TextStyle(color: HexColor("#FE914C"), fontWeight: FontWeight.w500, fontSize: 20),
                                                                                      ),
                                                                                      onPressed: () {
                                                                                        Navigator.of(context).pop();
                                                                                      },
                                                                                      style: OutlinedButton.styleFrom(
                                                                                        side: BorderSide(width: 1, color: HexColor("#FE914C")),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    width: 10,
                                                                                  ),
                                                                                  Expanded(
                                                                                      child: MaterialButton(
                                                                                    onPressed: () {
                                                                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => RingkasanPesananPage()));
                                                                                    },
                                                                                    elevation: 0,
                                                                                    minWidth: MediaQuery.of(context).size.width,
                                                                                    color: HexColor("#FE914C"),
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(5),
                                                                                    ),
                                                                                    child: const Text(
                                                                                      "Lanjutkan",
                                                                                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                                                                                    ),
                                                                                  ))
                                                                                ]),
                                                                              )
                                                                            ]),
                                                                          ),
                                                                        ));
                                                                  });
                                                            },
                                                            elevation: 0,
                                                            color: HexColor(
                                                                "#FE914C"),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: const Text(
                                                              "Setuju",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ))
                                                        ]),
                                                      )
                                                    ]),
                                                  ),
                                                ],
                                              ),
                                            ));
                                      });
                                },
                                child: const Text(
                                  "Cari Jadwal",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ))
                        ]),
                      )),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DataPenumpangPage()));
                      },
                      child: Column(children: [
                        Image.asset("assets/images/save.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Simpan Data Penumpang",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ]),
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PantauKapalPage()));
                      },
                      child: Column(children: [
                        Image.asset("assets/images/location.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Pantau Lokasi Kapal",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ]),
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RamalanCuacaPage()));
                      },
                      child: Column(children: [
                        Image.asset("assets/images/cloud.png"),
                        Text(
                          "Ramalan Cuaca",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ]),
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => InformasiKapalPage()));
                      },
                      child: Column(children: [
                        Image.asset("assets/images/port.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Informasi Jenis Kapal",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ]),
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => FaqPage()));
                      },
                      child: Column(children: [
                        Image.asset("assets/images/faq.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "FAQ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ]),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CustomerServicePage()));
                      },
                      child: Column(children: [
                        Image.asset("assets/images/call.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Customer \n Service",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ]),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CariPesananPage()));
                      },
                      child: Column(children: [
                        Image.asset("assets/images/search.png"),
                        Text(
                          "Cari Pesanan",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ]),
                    )),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            )
          ]),
        ),
      ),
    );
  }
}
