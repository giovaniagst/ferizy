import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ferizy/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class RamalanCuacaPage extends StatefulWidget {
  RamalanCuacaPage({Key? key}) : super(key: key);

  @override
  State<RamalanCuacaPage> createState() => _RamalanCuacaPageState();
}

class _RamalanCuacaPageState extends State<RamalanCuacaPage> {
  List<String> pelabuhan = [
    "Pelabuhan Merak, Banten",
    "Pelabuhan Bakauheni, Lampung",
    "Pelabuhan Ketapang, Jawa Timur",
    "Pelabuhan Gilimanuk, Bali",
    "Pelabuhan Ajibata, Sumatra Utara",
    "Pelabuhan Ambarita, Sumatra Utara"
  ];

  String selectedValue = "Pelabuhan Merak, Banten";
  String suhu = "30°";
  String feelsLike = "Feels Like 32°";

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
                    if (value == "Pelabuhan Bakauheni, Lampung") {
                      setState(() {
                        suhu = "32°";
                        feelsLike = "Feels Like 34°";
                      });
                    } else {
                      setState(() {
                        suhu = "30°";
                        feelsLike = "Feels Like 32°";
                      });
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
        title: Text("Ramalan Cuaca"),
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      backgroundColor: HexColor("#F0F0F2"),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(27),
        child: Column(children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
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
              child: Stack(
                children: [
                  Image.asset("assets/images/cerah.png"),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(children: [
                      Text(
                        "Cerah Berawan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 25,
                            shadows: <Shadow>[
                              Shadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        suhu,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 100,
                            shadows: <Shadow>[
                              Shadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        feelsLike,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            shadows: <Shadow>[
                              Shadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              )
                            ]),
                      ),
                    ]),
                  )
                ],
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 81,
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "12.00",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/cerah-berawan.png"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "34°",
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 81,
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
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "13.00",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/matahari.png",
                    scale: 1.3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "34°",
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 81,
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
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "14.00",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/berawan.png",
                    scale: 1.3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "29°",
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 81,
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
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "14.00",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/berawan.png",
                    scale: 1.3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "29°",
                    style: TextStyle(fontSize: 20),
                  )
                ]),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
