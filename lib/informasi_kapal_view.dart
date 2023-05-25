import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ferizy/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class InformasiKapalPage extends StatefulWidget {
  InformasiKapalPage({Key? key}) : super(key: key);

  @override
  State<InformasiKapalPage> createState() => _InformasiKapalPageState();
}

class _InformasiKapalPageState extends State<InformasiKapalPage> {
  List<String> pelabuhan = [
    "Pelabuhan Merak, Banten",
    "Pelabuhan Bakauheni, Lampung",
    "Pelabuhan Ketapang, Jawa Timur",
    "Pelabuhan Gilimanuk, Bali",
    "Pelabuhan Ajibata, Sumatra Utara",
    "Pelabuhan Ambarita, Sumatra Utara"
  ];

  String selectedValue = "Pelabuhan Merak, Banten";
  String dermagaExpress = "KMB Sebuku";
  String dermaga1 = "KMB Batumandi";
  String statusDermaga1 = "Bersandar";
  Color badgeDermaga1 = HexColor("#0D54A5");

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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Text(
                    'Pilih pelabuhan',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: pelabuhan
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });

                    if (selectedValue == "Pelabuhan Bakauheni, Lampung") {
                      setState(() {
                        dermagaExpress = "KMB Batumandi";
                        dermaga1 = "Tidak ada kapal";
                        statusDermaga1 = "Menunggu";
                        badgeDermaga1 = HexColor("#FE914C");
                      });
                    } else {
                      dermagaExpress = "KMB Sebuku";
                      dermaga1 = "KMB Batumandi";
                      statusDermaga1 = "Bersandar";
                      badgeDermaga1 = HexColor("#0D54A5");
                    }
                  },
                  iconOnClick: Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: HexColor("#0D54A5"),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: HexColor("#0D54A5"),
                  ),
                ),
              )),
        ),
        title: Text("Informasi Jenis Kapal"),
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      backgroundColor: HexColor("#F0F0F2"),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: [
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
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    Text(
                      "Dermaga Express",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: HexColor("#0D54A5"),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Bersandar",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Row(children: [
                    Image.asset(
                      "assets/images/ferry.png",
                      scale: 2,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      dermagaExpress,
                      style: TextStyle(fontSize: 16),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    Text(
                      "Dermaga 1",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: badgeDermaga1,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        statusDermaga1,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Row(children: [
                    Image.asset(
                      "assets/images/ferry.png",
                      scale: 2,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      dermaga1,
                      style: TextStyle(fontSize: 16),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    Text(
                      "Dermaga 2",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: HexColor("#FE914C"),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Menunggu",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Row(children: [
                    Image.asset(
                      "assets/images/ferry.png",
                      scale: 2,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Tidak ada kapal",
                      style: TextStyle(fontSize: 16),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(children: [
                    Text(
                      "Dermaga 3",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: HexColor("#0D54A5"),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Bersandar",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Row(children: [
                    Image.asset(
                      "assets/images/ferry.png",
                      scale: 2,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "KMB Portlink",
                      style: TextStyle(fontSize: 16),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
