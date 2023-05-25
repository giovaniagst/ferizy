import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RiwayatPage extends StatefulWidget {
  RiwayatPage({Key? key}) : super(key: key);

  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F0F0F2"),
      appBar: AppBar(
        title: Text("Riwayat Pembelian"),
        centerTitle: true,
        backgroundColor: HexColor("#0D54A5"),
        elevation: 1,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.white,
            child: Row(children: [
              Text(
                "90 hari kebelakang",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#0D54A5")),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: HexColor("#0D54A5"),
              )
            ]),
          ),
          preferredSize: const Size.fromHeight(50.0),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "April 2023",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
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
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      Text(
                        "Booking ID 1004309275",
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "Rp 457.700",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.lightBlue.shade50,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: HexColor("#0D54A5"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Bakauheni",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: HexColor("#0D54A5"),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "Dibayar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#0D54A5"),
                        ),
                        width: 10,
                        height: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Reguler",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
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
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      Text(
                        "Booking ID 1004309275",
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "Rp 457.700",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.lightBlue.shade50,
                    child: Row(children: [
                      Image.asset(
                        "assets/images/ferry.png",
                        scale: 1.7,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Ketapang",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: HexColor("#0D54A5"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Gilimanuk",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: HexColor("#0D54A5"),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "Belum dibayar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade700,
                        ),
                        width: 10,
                        height: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Express",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Maret 2023",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
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
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      Text(
                        "Booking ID 1004309275",
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "Rp 457.700",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.lightBlue.shade50,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: HexColor("#0D54A5"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Bakauheni",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: HexColor("#0D54A5"),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "Gagal",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#0D54A5"),
                        ),
                        width: 10,
                        height: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Reguler",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
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
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      Text(
                        "Booking ID 1004309275",
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "Rp 457.700",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.lightBlue.shade50,
                    child: Row(children: [
                      Image.asset(
                        "assets/images/ferry.png",
                        scale: 1.7,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Ketapang",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: HexColor("#0D54A5"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Gilimanuk",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: HexColor("#0D54A5"),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "Dibayar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.shade700,
                        ),
                        width: 10,
                        height: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Express",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
