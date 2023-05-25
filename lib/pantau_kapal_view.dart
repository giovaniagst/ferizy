import 'package:ferizy/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class PantauKapalPage extends StatefulWidget {
  PantauKapalPage({Key? key}) : super(key: key);

  @override
  State<PantauKapalPage> createState() => _PantauKapalPageState();
}

class _PantauKapalPageState extends State<PantauKapalPage> {
  String map = "assets/images/peta-rumah.png";
  List<Widget> info = [];

  String? _topModalData;

  Widget addInfo() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
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
            padding: EdgeInsets.all(15),
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/ferry.png",
                        scale: 2,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "KMP Sebuku",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        Text("Merak",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center),
                        Text("Banten",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                            textAlign: TextAlign.center)
                      ]),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/images/to.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Column(children: [
                        Text("Bakauheni",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center),
                        Text("Lampung",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                            textAlign: TextAlign.center)
                      ])
                    ],
                  ),
                ],
              ),
            )),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            color: Colors.lightBlue.shade50,
          ),
          child: Row(children: [
            Text(
              "20 km",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Spacer(),
            Text(
              "1j56m",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ]),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Image.asset(
            map,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70, left: 15, right: 15),
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
                        padding: EdgeInsets.only(top: 15),
                        height: 50,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Masukkan Koode Booking",
                                prefixIcon:
                                    Image.asset("assets/images/tiket.png")),
                          ),
                        )),
                    Row(children: [
                      Container(
                          width: 270,
                          child: Divider(
                            color: Colors.black,
                            height: 0,
                            indent: 0,
                          )),
                      MaterialButton(
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        height: 30,
                        minWidth: 100,
                        color: HexColor("#FE914C"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {
                          setState(() {
                            map = "assets/images/peta-laut.png";
                            info.clear();
                            info.add(addInfo());
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cari",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                            width: 80,
                            child: Divider(
                              color: Colors.black,
                              height: 0,
                              indent: 0,
                            )),
                      )
                    ]),
                    Container(
                        padding: EdgeInsets.only(bottom: 15),
                        height: 50,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Masukkan Nama Kapal",
                                prefixIcon: Image.asset(
                                  "assets/images/ferry.png",
                                  scale: 2,
                                )),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(15)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage(
                                      selectedIndex: 0,
                                    )));
                          },
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: HexColor("#0D54A5"),
                          )),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(15)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () async {
                            var value = await showTopModalSheet<String>(
                                context,
                                Container(
                                  padding: EdgeInsets.only(top: 30),
                                  height: 300,
                                  width: MediaQuery.of(context).size.width,
                                  color: HexColor("#0D54A5"),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(
                                                          selectedIndex: 0,
                                                        )));
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(15),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
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
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(
                                                          selectedIndex: 1,
                                                        )));
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(15),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
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
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(
                                                          selectedIndex: 2,
                                                        )));
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(15),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
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
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(
                                                          selectedIndex: 3,
                                                        )));
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(15),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
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
                          child: Icon(
                            Icons.more_horiz_rounded,
                            color: HexColor("#0D54A5"),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 320,
              ),
              ...info
            ],
          )
        ],
      )),
    );
  }
}
