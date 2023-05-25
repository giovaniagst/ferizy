import 'package:ferizy/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RefundStatusPage extends StatefulWidget {
  RefundStatusPage({Key? key}) : super(key: key);

  @override
  State<RefundStatusPage> createState() => _RefundStatusPageState();
}

class _RefundStatusPageState extends State<RefundStatusPage> {
  Future<bool> _showList() async {
    await Future.delayed(Duration(milliseconds: 300));
    return true;
  }

  double _height = 60;
  bool _isExpanded = false;

  List<String> dataHarga = ["Biaya Reschedule (50%)", "Total Harga Tiket"];

  List<String> harga = ["- Rp 228.850", "Rp 457.700"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomePage(
                      selectedIndex: 1,
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
        height: MediaQuery.of(context).size.height - 120,
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
                                  "Pengajuan Refund Berhasil",
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
                                    "Dibatalkan pada",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "26 April 2022",
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
                                    "Rekening Pengembalian",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "800192845 (BCA)",
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
                                    "Tanggal Pengembalian",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "30 April 2023",
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
                                      "Rp 228.850",
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
                                            _height = 140;
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
                                            itemCount: 2,
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
                          Container(
                            padding: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5)),
                            ),
                            child: Center(
                                child: Text(
                              "Menunggu",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
