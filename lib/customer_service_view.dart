import 'package:ferizy/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class CustomerServicePage extends StatefulWidget {
  CustomerServicePage({Key? key}) : super(key: key);

  @override
  State<CustomerServicePage> createState() => _CustomerServicePageState();
}

class _CustomerServicePageState extends State<CustomerServicePage> {
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
        title: const Text("Hubungi Kami"),
        centerTitle: true,
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: HexColor("#F0F0F2"),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            color: Colors.lightBlue.shade50,
            width: MediaQuery.of(context).size.width,
            height: 250,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/images/ferizy-shadow.png",
                ),
                Container(
                  margin: EdgeInsets.all(15),
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
                  child: Column(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Alamat",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Jl. Jend. Ahmad Yani Kav. 52 A, Cempaka Putih Timur, Kota Jakarta Pusat, 10510, Indonesia",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Pusat Bantuan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          color: HexColor("#0D54A5"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "cs@indonesiaferry.co.id",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_outlined,
                          color: HexColor("#0D54A5"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "(021) 191",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sosial Media & Whatsapp",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/facebook.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ASDP Indonesia Ferry",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/whatsapp.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "08111021191",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/twitter.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "@asdp191",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/instagram.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "@asdp191",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ]),
                )
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Image.asset(
            "assets/images/whatsapp-logo.png",
            scale: 3.5,
          )),
    );
  }
}
