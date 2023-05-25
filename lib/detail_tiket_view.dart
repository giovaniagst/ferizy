import 'package:dotted_line/dotted_line.dart';
import 'package:ferizy/status_pembayaran_view.dart';
import 'package:ferizy/refund_view.dart';
import 'package:ferizy/reschedule_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailTiketPage extends StatefulWidget {
  DetailTiketPage({Key? key}) : super(key: key);

  @override
  State<DetailTiketPage> createState() => _DetailTiketPageState();
}

class _DetailTiketPageState extends State<DetailTiketPage> {
  double _height = 60;
  bool _isExpanded = false;

  Future<bool> _showList() async {
    await Future.delayed(Duration(milliseconds: 300));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
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
      backgroundColor: HexColor("#F0F0F2"),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kode booking",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "A102BG",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/barcode.png"),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Detail Keberangkatan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
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
                          "21 April 2023",
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
                          Text("Merak",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center),
                          Text("Banten",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              textAlign: TextAlign.center)
                        ])),
                        Expanded(child: Image.asset("assets/images/to.png")),
                        Expanded(
                            child: Column(children: [
                          Text("Bakauheni",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center),
                          Text("Lampung",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              textAlign: TextAlign.center)
                        ])),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("11.00 - 12.00 WIB",
                        style: TextStyle(
                            fontSize: 16,
                            color: HexColor("#0D54A5"),
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Kendaraan (Golongan IVA)",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 4.0,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Reguler",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedContainer(
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
                duration: Duration(milliseconds: 300),
                height: _height,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Informasi Penting Keberangkatan',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {
                            if (!_isExpanded) {
                              setState(() {
                                _height = 210;
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
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('1. '),
                                      Expanded(
                                          child: Text(
                                              'Dokumen E-Tiket wajib ditunjukkan saat melakukan proses masuk pelabuhan (check in)')),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('3. '),
                                      Expanded(
                                          child: Text(
                                              'Tiket akan hangus (expired) apabila Anda belum masuk pelabuhan (check in) hingga melewati batas waktu jadwal masuk yang Anda pilih')),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              );
                            })
                        : SizedBox.shrink(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rincian Penumpang",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
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
                  Container(
                    padding: EdgeInsets.only(
                        top: 15, left: 15, right: 15, bottom: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Giovani Anggasta",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("3107009208700120",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: HexColor("#0D54A5"),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "Dewasa",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ]),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        bottom: 15, left: 15, right: 15, top: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Joceline Stephani",
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("3107009208700120",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: HexColor("#0D54A5"),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "Anak",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ]),
                  )
                ]),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
