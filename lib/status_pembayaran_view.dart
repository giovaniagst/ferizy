import 'dart:io';

import 'package:ferizy/detail_tiket_view.dart';
import 'package:ferizy/home_view.dart';
import 'package:ferizy/refund_view.dart';
import 'package:ferizy/reschedule_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PembayaranDonePage extends StatefulWidget {
  PembayaranDonePage({Key? key}) : super(key: key);

  @override
  State<PembayaranDonePage> createState() => _PembayaranDonePageState();
}

class _PembayaranDonePageState extends State<PembayaranDonePage> {
  double _height = 60;
  bool _isExpanded = false;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomePage(
                      selectedIndex: 0,
                    )));
          },
        ),
        title: Column(children: [
          Row(
            children: [
              SizedBox(
                width: 45,
              ),
              Text(
                "Merak",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Bakauheni",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 65,
              ),
              Text(
                "Booking ID 1004309275",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ],
          )
        ]),
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        color: HexColor("#F0F0F2"),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Container(
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
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.check_circle_outline_outlined,
                                  color: Colors.green,
                                  size: 70,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Pembelian Berhasil",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Column(children: [
                              Row(
                                children: [
                                  Text(
                                    "Dibeli pada",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "21 April 2022",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Metode pembayaran",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "QRIS",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            height: _height,
                            padding: EdgeInsets.only(
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Data harga',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                    Spacer(),
                                    Text(
                                      "Rp 457.700",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: BoxConstraints(),
                                      onPressed: () {
                                        if (!_isExpanded) {
                                          setState(() {
                                            _height = 180;
                                            _isExpanded = true;
                                          });
                                        } else {
                                          setState(() {
                                            _height = 60;
                                            _isExpanded = false;
                                          });
                                        }
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
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Detail Tiket",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailTiketPage()));
              },
              child: Container(
                padding: EdgeInsets.all(15),
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
                child: Row(children: [
                  Image.asset(
                    "assets/images/ferry.png",
                    scale: 1.7,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Merak",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Bakauheni",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: HexColor("#0D54A5"),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Reschedule & Refund",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ReschedulePage()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 15, left: 15, bottom: 5, right: 15),
                    child: Row(children: [
                      Image.asset(
                        "assets/images/reschedule.png",
                        scale: 1.5,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Reschedule",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Ingin merubah jadwal tiket? Tekan untuk mempelajari lebih lanjut",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      )),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: HexColor("#0D54A5"),
                      )
                    ]),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => RefundPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 5, left: 15, bottom: 15, right: 15),
                    child: Row(children: [
                      Image.asset(
                        "assets/images/refund.png",
                        scale: 1.4,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Refund",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Ingin membatalkan tiket? Tekan untuk mempelajari lebih lanjut",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      )),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: HexColor("#0D54A5"),
                      )
                    ]),
                  ),
                ),
              ]),
            )
          ],
        ),
      )),
    );
  }
}
