import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DataReschedulePage extends StatefulWidget {
  DataReschedulePage({Key? key}) : super(key: key);

  @override
  State<DataReschedulePage> createState() => _DataReschedulePageState();
}

class _DataReschedulePageState extends State<DataReschedulePage> {
  final _tanggal = TextEditingController();
  final _jam = TextEditingController();

  int _selectedIndex = 0;

  get child => null;

  FontWeight fw = FontWeight.w500;
  String tanggal = "Masukkan data perubahan jadwal";

  final List<String> listJam = [
    "06.00 - 07.00",
    "07.00 - 08.00",
    "08.00 - 09.00",
    "09.00 - 10.00",
    "10.00 - 11.00",
    "11.00 - 12.00",
    "12.00 - 13.00",
    "13.00 - 14.00",
    "14.00 - 15.00",
    "15.00 - 16.00",
    "16.00 - 17.00",
    "17.00 - 18.00",
    "18.00 - 19.00",
    "19.00 - 20.00",
    "20.00 - 21.00",
    "21.00 - 22.00",
    "22.00 - 23.00",
    "23.00 - 00.00",
    "00.00 - 01.00",
    "01.00 - 02.00",
    "02.00 - 03.00",
    "03.00 - 04.00",
    "04.00 - 05.00",
    "05.00 - 06.00"
  ];

  String monthToString(int month) {
    switch (month) {
      case 1:
        return "Januari";
      case 2:
        return "Februari";
      case 3:
        return "Maret";
      case 4:
        return "April";
      case 5:
        return "Mei";
      case 6:
        return "Juni";
      case 7:
        return "Juli";
      case 8:
        return "Agustus";
      case 9:
        return "September";
      case 10:
        return "Oktober";
      case 11:
        return "November";
      default:
        return "Desember";
    }
  }

  _datePicker(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: DateTime(2023, 4, 5),
        firstDate: DateTime(2023, 4),
        lastDate: DateTime(2023, DateTime.now().month + 3),
        builder: (context, child) {
          return Theme(
              data: ThemeData(
                  colorScheme: ColorScheme.light(
                      primary: HexColor("#0D54A5"),
                      onPrimary: Colors.white,
                      onSurface: Colors.black)),
              child: child!);
        }).then((value) {
      setState(() {
        _tanggal.text = value!.day.toString() +
            " " +
            monthToString(value.month) +
            " " +
            value.year.toString();
      });
    });
  }

  List<Widget> data = [];

  String pembayaranLogo = "assets/images/bca.png";
  String metodePembayaran = "BCA Virtual Account";

  List<String> pembayaranVA = ["Mandiri", "BRI", "BNI", "BTN", "BCA"];
  List<String> pembayaranEmoney = [
    "LinkAja Web Checkout",
    "OVO",
    "ShopeePay",
    "QRIS"
  ];
  List<String> pembayaranVAImage = [
    "assets/images/mandiri.png",
    "assets/images/bri.png",
    "assets/images/bni.png",
    "assets/images/btn.png",
    "assets/images/bca.png"
  ];
  List<String> pembayaranEmoneyImage = [
    "assets/images/link-aja.png",
    "assets/images/ovo.png",
    "assets/images/shopee.png",
    "assets/images/qris.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Data Perubahan Jadwal",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Data Perubahan Jadwal",
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
                                    "Tanggal Check In",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _datePicker(context);
                                  },
                                  child: TextField(
                                    enabled: false,
                                    controller: _tanggal,
                                    decoration: InputDecoration(
                                      hintText: "Masukkan Tanggal Check In",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Jam Check In",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    AppBar(
                                                      title: const Text(
                                                          "JAM CHECK IN"),
                                                      centerTitle: true,
                                                      backgroundColor:
                                                          HexColor("#0D54A5"),
                                                      elevation: 0,
                                                      toolbarHeight: 60,
                                                      leading: IconButton(
                                                        icon: const Icon(
                                                            Icons.close),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 150,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: CupertinoPicker(
                                                          itemExtent: 70,
                                                          onSelectedItemChanged:
                                                              (int index) {
                                                            setState(() {
                                                              _selectedIndex =
                                                                  index;
                                                            });
                                                          },
                                                          children: List<
                                                                  Widget>.generate(
                                                              listJam.length,
                                                              (int index) {
                                                            return Center(
                                                              child: Text(
                                                                  listJam[
                                                                      index]),
                                                            );
                                                          })),
                                                    ),
                                                    Divider(),
                                                    Container(
                                                      height: 70,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Row(children: [
                                                        Expanded(
                                                          child: OutlinedButton(
                                                            child: Text(
                                                              "Batal",
                                                              style: TextStyle(
                                                                  color: HexColor(
                                                                      "#FE914C"),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 20),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            style:
                                                                OutlinedButton
                                                                    .styleFrom(
                                                              side: BorderSide(
                                                                  width: 1,
                                                                  color: HexColor(
                                                                      "#FE914C")),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Expanded(
                                                            child:
                                                                MaterialButton(
                                                          onPressed: () {
                                                            _jam.text = listJam[
                                                                _selectedIndex];
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          elevation: 0,
                                                          minWidth:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width,
                                                          color: HexColor(
                                                              "#FE914C"),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: const Text(
                                                            "Pilih",
                                                            style: const TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ))
                                                      ]),
                                                    )
                                                  ],
                                                ),
                                              ));
                                        }).then((value) {
                                      _jam.text = value;
                                    });
                                  },
                                  child: TextField(
                                    controller: _jam,
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: "Masukkan Jam Check In",
                                    ),
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
                                    setState(() {
                                      tanggal = _tanggal.text;
                                      fw = FontWeight.normal;
                                      data.clear();
                                      data.add(
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            _jam.text + " WIB",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      );
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
            child: Row(children: [
              Image.asset(
                "assets/images/calendar.png",
                scale: 1.5,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      tanggal,
                      style: TextStyle(fontSize: 16, fontWeight: fw),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ...data
                ],
              )),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: HexColor("#0D54A5"),
              )
            ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Metode Pembayaran",
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
              pembayaranLogo,
              scale: 1.5,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              metodePembayaran,
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            TextButton(
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
                                      IconButton(
                                        icon: const Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      const Expanded(
                                          child: Text(
                                        "Pilih Metode Pembayaran",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ))
                                    ],
                                  ),
                                ),
                                preferredSize: const Size.fromHeight(16.0),
                              ),
                            ),
                            body: SingleChildScrollView(
                              child: Container(
                                color: HexColor("#F0F0F2"),
                                padding: const EdgeInsets.all(20.0),
                                child: Column(children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Virtual Account Bank (Transfer)",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 350,
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
                                    child: ListView.separated(
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return Divider(
                                            color: Colors.grey.shade400,
                                            thickness: 1.0,
                                          );
                                        },
                                        itemCount: pembayaranVA.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ListTile(
                                            title: Text(
                                              pembayaranVA[index],
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            leading: Image.asset(
                                              pembayaranVAImage[index],
                                              scale: 1.5,
                                            ),
                                            onTap: () {
                                              setState(() {
                                                metodePembayaran =
                                                    pembayaranVA[index] +
                                                        " Virtual Account";
                                                pembayaranLogo =
                                                    pembayaranVAImage[index];
                                              });
                                              Navigator.pop(context);
                                            },
                                          );
                                        }),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "E-Money/E-Wallet",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 275,
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
                                    child: ListView.separated(
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return Divider(
                                            color: Colors.grey.shade400,
                                            thickness: 1.0,
                                          );
                                        },
                                        itemCount: pembayaranEmoney.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ListTile(
                                            title: Text(
                                              pembayaranEmoney[index],
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            leading: Image.asset(
                                              pembayaranEmoneyImage[index],
                                              scale: 1.5,
                                            ),
                                            onTap: () {
                                              setState(() {
                                                metodePembayaran =
                                                    pembayaranEmoney[index];
                                                pembayaranLogo =
                                                    pembayaranEmoneyImage[
                                                        index];
                                              });
                                              Navigator.pop(context);
                                            },
                                          );
                                        }),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ]),
                              ),
                            ));
                      });
                },
                child: Text(
                  "Ubah",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#0D54A5")),
                ))
          ]),
        )
      ],
    );
  }
}
