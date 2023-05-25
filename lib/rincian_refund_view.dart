import 'package:ferizy/refund_status_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RincianRefundPage extends StatefulWidget {
  RincianRefundPage({Key? key}) : super(key: key);

  @override
  State<RincianRefundPage> createState() => _RincianRefundPageState();
}

class _RincianRefundPageState extends State<RincianRefundPage> {
  double _height = 60;
  bool _isExpanded = false;

  List<String> dataHarga = ["Biaya Pembatalan (50%)", "Total Harga Tiket"];

  List<String> harga = ["- Rp 228.850", "Rp 457.700"];

  Future<bool> _showList() async {
    await Future.delayed(Duration(milliseconds: 300));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Foto KTP/SIM/Paspor",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
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
            Icon(Icons.file_copy_outlined, color: HexColor("#0D54A5")),
            SizedBox(
              width: 10,
            ),
            Text(
              "IMG_3421.JPG",
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Foto STNK",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
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
            Icon(
              Icons.file_copy_outlined,
              color: HexColor("#0D54A5"),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "IMG_5921.JPG",
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Bank",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
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
              "assets/images/bca.png",
              scale: 1.5,
            ),
            Spacer(),
            Text(
              "800192845",
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Tanggal Pengembalian",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
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
              "assets/images/calendar.png",
              scale: 1.5,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "30 April 2023",
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Total Pengembalian",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 10,
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
                    'Total Harga',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Rp 228.850",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                                          fontSize: 16, color: Colors.grey),
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
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => RefundStatusPage()));
          },
          child: const Text(
            "Ajukan Pembatalan",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
