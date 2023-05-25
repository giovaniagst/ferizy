import 'package:ferizy/detail_tiket_view.dart';
import 'package:ferizy/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class CariPesananPage extends StatefulWidget {
  CariPesananPage({Key? key}) : super(key: key);

  @override
  State<CariPesananPage> createState() => _CariPesananPageState();
}

class _CariPesananPageState extends State<CariPesananPage> {
  String? _topModalData;

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
        actions: [
          IconButton(
              onPressed: () async {
                var value = await showTopModalSheet<String>(
                    context,
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      color: HexColor("#0D54A5"),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage(
                                          selectedIndex: 0,
                                        )));
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "BERANDA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage(
                                          selectedIndex: 1,
                                        )));
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "PEMBELIAN",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage(
                                          selectedIndex: 2,
                                        )));
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "RIWAYAT",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomePage(
                                          selectedIndex: 3,
                                        )));
                              },
                              child: Container(
                                padding: EdgeInsets.all(15),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "PROFIL",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ]),
                    ));

                if (value != null) {
                  setState(() {
                    _topModalData = value;
                  });
                }
              },
              icon: Icon(Icons.more_horiz_rounded))
        ],
        title: const Text("Cari Pesanan"),
        centerTitle: true,
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: HexColor("#F0F0F2"),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Kode Booking",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                hintText: "Masukkan Kode Booking",
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
                    MaterialPageRoute(builder: (context) => DetailTiketPage()));
              },
              child: const Text(
                "Cari Pesanan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
