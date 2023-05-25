import 'dart:io';

import 'package:dotted_line/dotted_line.dart';
import 'package:ferizy/beranda_view.dart';
import 'package:ferizy/home_view.dart';
import 'package:ferizy/isi_data_view.dart';
import 'package:ferizy/metode_pembayaran_view.dart';
import 'package:ferizy/pembayaran_view.dart';
import 'package:ferizy/verifikasi_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RingkasanPesananPage extends StatefulWidget {
  RingkasanPesananPage({Key? key}) : super(key: key);

  @override
  State<RingkasanPesananPage> createState() => _RingkasanPesananPageState();
}

class _RingkasanPesananPageState extends State<RingkasanPesananPage> {
  int currentStep = 0;
  int currentStepPlus = 0;

  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep += 1;
      });
    }
    if (currentStepPlus < 3) {
      setState(() {
        currentStepPlus += 1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0 && currentStepPlus < 3) {
      setState(() {
        currentStep -= 1;
      });
    }

    if (currentStepPlus > 0) {
      setState(() {
        currentStepPlus -= 1;
      });
    }
  }

  late double _height;
  late bool _isExpanded;

  Future<bool> _showList() async {
    await Future.delayed(Duration(milliseconds: 300));
    return true;
  }

  List<String> dataHarga = [
    "Kendaraan Golongan IVA x1",
    "Dewasa x1",
    "Anak x1"
  ];

  List<String> harga = ["Rp 457.700", "Rp 0", "Rp 0"];

  List<Widget> pembayaran = [];

  Widget pembayaranPage() {
    return Column(
      children: [PembayaranPage()],
    );
  }

  Widget konfirmasiPembayaran() {
    return Column(
      children: [
        MetodePembayaranPage(),
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
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: _height,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Total Harga',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Rp 457.700",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () {
                                setState(() {
                                  if (!_isExpanded) {
                                    _height = 180;
                                    _isExpanded = true;
                                  } else {
                                    _height = 60;
                                    _isExpanded = false;
                                  }
                                });
                              },
                              icon: !_isExpanded
                                  ? Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: HexColor("#0D54A5"),
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up_rounded,
                                      color: HexColor("#0D54A5"),
                                    ),
                            )
                          ],
                        ),
                        _isExpanded
                            ? FutureBuilder(
                                future: _showList(),

                                /// will wait untill box animation completed
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData) {
                                    return SizedBox();
                                  }
                                  return ListView.builder(
                                    itemCount: 3,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                dataHarga[index],
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                              ),
                                              Spacer(),
                                              Text(
                                                harga[index],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      );
                                    },
                                  );
                                })
                            : SizedBox.shrink(),
                      ],
                    ),
                  ),
                  DottedLine(
                    dashColor: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: MaterialButton(
                      height: 50,
                      elevation: 0,
                      minWidth: MediaQuery.of(context).size.width,
                      color: HexColor("#FE914C"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {
                        setState(() {
                          pembayaran.clear();
                          pembayaran.add(pembayaranPage());
                          currentStepPlus += 1;
                        });
                      },
                      child: const Text(
                        "Lanjutkan Pembayaran",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _height = 60;
      _isExpanded = false;
    });
    Future.delayed(Duration.zero, () {
      pembayaran = [konfirmasiPembayaran()];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              if (currentStep == 0) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage(
                          selectedIndex: 0,
                        )));
              } else if (currentStep > 0 && currentStepPlus < 3) {
                cancelStep();
              } else if (currentStep == 2 && currentStepPlus == 3) {
                setState(() {
                  currentStepPlus -= 1;
                  pembayaran.clear();
                  pembayaran.add(konfirmasiPembayaran());
                });
              }
            },
          ),
          title: currentStepPlus == 0
              ? Text("Ringkasan Pembelian")
              : currentStepPlus == 1
                  ? Text("Verifikasi Data")
                  : currentStepPlus == 2
                      ? Text("Konfirmasi Pembayaran")
                      : Column(
                          children: [
                            Text("QRIS"),
                            Text(
                              "Booking ID 1004309275",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
          centerTitle: true,
          backgroundColor: HexColor("#0D54A5"),
          elevation: 0,
          toolbarHeight: 120,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(150.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Ketuk untuk melihat detail produk",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
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
                              "21 April 2023",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Column(children: [
                              Text("Merak",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center),
                              Text("Banten",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  textAlign: TextAlign.center)
                            ]),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: HexColor("#FE914C"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(children: [
                              Text("Bakauheni",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center),
                              Text("Lampung",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  textAlign: TextAlign.center)
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "11.00 - 12.00 WIB",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text("Kendaraan (Golongan IVA)",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 4.0,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Reguler",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Theme(
            data: ThemeData(
              canvasColor: HexColor("#0D54A5"),
              // primarySwatch: buildMaterialColor(Color(0xffFE914C)),
              colorScheme: Theme.of(context).colorScheme.copyWith(
                  onSurface: Colors.grey.shade200,
                  primary: Color(0xffFE914C),
                  onBackground: Colors.grey),
            ),
            child: Stepper(
              type: StepperType.horizontal,
              currentStep: currentStep,
              steps: [
                Step(
                  title: Text("Isi Data Diri",
                      style: TextStyle(color: Colors.white)),
                  content: Column(
                    children: [
                      IsiDataPage(),
                      MaterialButton(
                        height: 50,
                        elevation: 0,
                        minWidth: MediaQuery.of(context).size.width,
                        color: HexColor("#FE914C"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {
                          continueStep();
                        },
                        child: const Text(
                          "Lanjutkan",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  isActive: currentStep == 0,
                  state:
                      currentStep > 0 ? StepState.complete : StepState.indexed,
                ),
                Step(
                    title: Text(
                      "Verifikasi",
                      style: TextStyle(color: Colors.white),
                    ),
                    content: Column(children: [
                      VerifikasiPage(),
                      MaterialButton(
                        height: 50,
                        elevation: 0,
                        minWidth: MediaQuery.of(context).size.width,
                        color: HexColor("#FE914C"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {
                          continueStep();
                        },
                        child: const Text(
                          "Konfirmasi",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
                    isActive: currentStep == 1,
                    state: currentStep > 1
                        ? StepState.complete
                        : StepState.indexed),
                Step(
                    title: Text("Pembayaran",
                        style: TextStyle(color: Colors.white)),
                    content: Column(children: [...pembayaran]),
                    isActive: currentStep == 2,
                    state: currentStep > 2
                        ? StepState.complete
                        : StepState.indexed),
              ],
            ),
          ),
        ));
  }
}
