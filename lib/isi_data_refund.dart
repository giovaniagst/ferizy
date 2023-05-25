import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class IsiDataRefundPage extends StatefulWidget {
  IsiDataRefundPage({Key? key}) : super(key: key);

  @override
  State<IsiDataRefundPage> createState() => _IsiDataRefundPageState();
}

class _IsiDataRefundPageState extends State<IsiDataRefundPage> {
  List<Widget> fotoKtp = [];
  List<Widget> fotoStnk = [];

  final List<String> items = [
    'BCA',
    'BNI',
    'Mandiri',
    'BRI',
  ];
  String? selectedValue;
  String rekening = "7105006001";
  final _rekening = TextEditingController();

  @override
  void initState() {
    super.initState();
    fotoKtp = [
      InkWell(
        onTap: () {
          setState(() {
            fotoKtp.clear();
            fotoKtp.add(Container(
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
                Icon(Icons.file_copy_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "IMG_3421.JPG",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    child: Text(
                      "Ubah",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ))
              ]),
            ));
          });
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
          child: DottedBorder(
            padding: EdgeInsets.all(15),
            strokeWidth: 1,
            color: Colors.grey,
            radius: Radius.circular(10),
            child: Column(
              children: [
                Icon(
                  Icons.file_copy_outlined,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Masukkan foto KTP/SIM/Paspor dengan format .jpg .jpeg .png. Ukuran foto maksimal 1MB",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    ];
    fotoStnk = [
      InkWell(
        onTap: () {
          setState(() {
            fotoStnk.clear();
            fotoStnk.add(Container(
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
                Icon(Icons.file_copy_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "IMG_5921.JPG",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    child: Text(
                      "Ubah",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ))
              ]),
            ));
          });
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
          child: DottedBorder(
            padding: EdgeInsets.all(15),
            strokeWidth: 1,
            color: Colors.grey,
            radius: Radius.circular(10),
            child: Column(
              children: [
                Icon(
                  Icons.file_copy_outlined,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Masukkan foto STNK dengan format .jpg .jpeg .png. Ukuran foto maksimal 1MB",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    ];
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
        ...fotoKtp,
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
        ...fotoStnk,
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
            Column(
              children: [
                Image.asset(
                  "assets/images/bca.png",
                  scale: 1.5,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  rekening,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return Scaffold(
                          appBar: AppBar(
                            backgroundColor: HexColor("#0D54A5"),
                            elevation: 0,
                            toolbarHeight: 100,
                            automaticallyImplyLeading: false,
                            bottom: PreferredSize(
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  bottom: 10.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Data Pembatalan",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              preferredSize: const Size.fromHeight(16.0),
                            ),
                          ),
                          body: SingleChildScrollView(
                            child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                                color: HexColor("#F0F0F2"),
                                padding: const EdgeInsets.all(20.0),
                                child: Form(
                                  child: Column(children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Bank",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: DropdownButtonFormField(
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade300),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade300),
                                          ),
                                          disabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade300),
                                          ),
                                        ),
                                        dropdownColor: Colors.white,
                                        hint: Text("Pilih Bank"),
                                        items: items
                                            .map((item) =>
                                                DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                        value: selectedValue,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedValue = value as String;
                                          });
                                        },
                                        isExpanded: true,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: HexColor("#0D54A5"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Nomor Rekening",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextField(
                                      controller: _rekening,
                                      decoration: InputDecoration(
                                        hintText: "Masukkan Nomor Rekening",
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade300),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade300),
                                        ),
                                        disabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey.shade300),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    MaterialButton(
                                      height: 50,
                                      elevation: 0,
                                      minWidth:
                                          MediaQuery.of(context).size.width,
                                      color: HexColor("#FE914C"),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          rekening = _rekening.text;
                                        });

                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(
                                        "Simpan",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ]),
                                )),
                          ));
                    });
              },
              child: Text(
                "Ubah",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            )
          ]),
        )
      ],
    );
  }
}
