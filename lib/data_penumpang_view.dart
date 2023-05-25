import 'package:ferizy/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class DataPenumpangPage extends StatefulWidget {
  DataPenumpangPage({Key? key}) : super(key: key);

  @override
  State<DataPenumpangPage> createState() => _DataPenumpangPageState();
}

class _DataPenumpangPageState extends State<DataPenumpangPage> {
  final _namaLengkap = TextEditingController();
  final _titel = TextEditingController();
  final _jenisID = TextEditingController();
  final _noID = TextEditingController();
  final _usia = TextEditingController();
  final _kota = TextEditingController();

  List<String> titel = ["Tuan", "Nona", "Nyonya"];
  List<String> jenisID = ["KTP", "SIM", "Paspor", "Lain-lain"];
  List<String> kota = [
    "Kota Jakarta Selatan",
    "Kota Jakarta Pusat",
    "Kota Jakarta Timur",
    "Kota Jakarta Barat",
    "Kota Jakarta Utara",
    "Kota Bandung",
    "Kab. Bandung",
    "Kota Bandar Lampung",
    "Kota Surabaya",
    "Kab. Bangka"
  ];

  List<Widget> penumpang = [];

  Widget addPenumpang() {
    return InkWell(
      onTap: () {},
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
          Text(
            _titel.text + " " + _namaLengkap.text,
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: HexColor("#0D54A5"),
          )
        ]),
      ),
    );
  }

  int id = 0;

  @override
  Widget build(BuildContext context) {
    String? _topModalData;

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
              padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: HexColor("#F0F0F2"),
                  filled: true,
                  hintText: "Cari daftar penumpang",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("#E2E1E5")),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 5,
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              )),
        ),
        title: Text("Daftar Penumpang"),
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      backgroundColor: HexColor("#F0F0F2"),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(children: [
                        InkWell(
                          onTap: () {},
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
                              Text(
                                "Nona Giovani Anggasta",
                                style: TextStyle(fontSize: 16),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: HexColor("#0D54A5"),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
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
                              Text(
                                "Nona Joceline Stephani",
                                style: TextStyle(fontSize: 16),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: HexColor("#0D54A5"),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
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
                              Text(
                                "Tuan Tony Stark",
                                style: TextStyle(fontSize: 16),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: HexColor("#0D54A5"),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {},
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
                              Text(
                                "Tuan Charles Aditya",
                                style: TextStyle(fontSize: 16),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: HexColor("#0D54A5"),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ...penumpang
                      ]),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: MaterialButton(
                      height: 50,
                      elevation: 0,
                      minWidth: MediaQuery.of(context).size.width,
                      color: HexColor("#FE914C"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
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
                                              "Tambah Data Penumpang",
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
                                      preferredSize:
                                          const Size.fromHeight(16.0),
                                    ),
                                  ),
                                  body: SingleChildScrollView(
                                    child: Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        color: HexColor("#F0F0F2"),
                                        padding: const EdgeInsets.all(20.0),
                                        child: Form(
                                          child: Column(children: [
                                            Row(
                                              children: [
                                                Radio(
                                                  value: 1,
                                                  groupValue: id,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      id = 1;
                                                    });
                                                  },
                                                ),
                                                Text(
                                                  'Dewasa',
                                                  style: new TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                                Radio(
                                                  value: 2,
                                                  groupValue: id,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      id = 2;
                                                    });
                                                  },
                                                ),
                                                Text(
                                                  'Anak',
                                                  style: new TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                                Radio(
                                                  value: 3,
                                                  groupValue: id,
                                                  onChanged: (val) {
                                                    setState(() {
                                                      id = 3;
                                                    });
                                                  },
                                                ),
                                                Text(
                                                  'Bayi',
                                                  style: new TextStyle(
                                                      fontSize: 16.0),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Titel",
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
                                                    builder:
                                                        (BuildContext context) {
                                                      return Dialog(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                AppBar(
                                                                  title: const Text(
                                                                      "PILIH TITEL"),
                                                                  centerTitle:
                                                                      true,
                                                                  backgroundColor:
                                                                      HexColor(
                                                                          "#0D54A5"),
                                                                  elevation: 0,
                                                                  toolbarHeight:
                                                                      60,
                                                                  leading:
                                                                      IconButton(
                                                                    icon: const Icon(
                                                                        Icons
                                                                            .close),
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 210,
                                                                  child: ListView
                                                                      .separated(
                                                                          separatorBuilder: (BuildContext context,
                                                                              int
                                                                                  index) {
                                                                            return Divider(
                                                                              color: Colors.grey.shade300,
                                                                              thickness: 1.0,
                                                                            );
                                                                          },
                                                                          itemCount: titel
                                                                              .length,
                                                                          itemBuilder:
                                                                              (BuildContext context, int index) {
                                                                            return ListTile(
                                                                              title: Text(titel[index]),
                                                                              onTap: () {
                                                                                _titel.text = titel[index];
                                                                                Navigator.pop(context);
                                                                              },
                                                                            );
                                                                          }),
                                                                ),
                                                              ],
                                                            ),
                                                          ));
                                                    });
                                              },
                                              child: TextField(
                                                controller: _titel,
                                                enabled: false,
                                                decoration: InputDecoration(
                                                  hintText: "Masukkan Titel",
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Nama Lengkap",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            TextField(
                                              controller: _namaLengkap,
                                              cursorColor: Colors.black,
                                              decoration: InputDecoration(
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors
                                                            .grey.shade300),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors
                                                            .grey.shade300),
                                                  ),
                                                  disabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors
                                                            .grey.shade300),
                                                  ),
                                                  hintText:
                                                      "Masukkan Nama Lengkap",
                                                  helperText:
                                                      "Isi sesuai dengan Nama yang tertera di KTP/SIM/Paspor\n(tanpa gelar/karakter khusus)"),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Jenis ID",
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
                                                    builder:
                                                        (BuildContext context) {
                                                      return Dialog(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                AppBar(
                                                                  title: const Text(
                                                                      "PILIH JENIS ID"),
                                                                  centerTitle:
                                                                      true,
                                                                  backgroundColor:
                                                                      HexColor(
                                                                          "#0D54A5"),
                                                                  elevation: 0,
                                                                  toolbarHeight:
                                                                      60,
                                                                  leading:
                                                                      IconButton(
                                                                    icon: const Icon(
                                                                        Icons
                                                                            .close),
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 275,
                                                                  child: ListView
                                                                      .separated(
                                                                          separatorBuilder: (BuildContext context,
                                                                              int
                                                                                  index) {
                                                                            return Divider(
                                                                              color: Colors.grey.shade300,
                                                                              thickness: 1.0,
                                                                            );
                                                                          },
                                                                          itemCount: jenisID
                                                                              .length,
                                                                          itemBuilder:
                                                                              (BuildContext context, int index) {
                                                                            return ListTile(
                                                                              title: Text(jenisID[index]),
                                                                              onTap: () {
                                                                                _jenisID.text = jenisID[index];
                                                                                Navigator.pop(context);
                                                                              },
                                                                            );
                                                                          }),
                                                                ),
                                                              ],
                                                            ),
                                                          ));
                                                    });
                                              },
                                              child: TextField(
                                                enabled: false,
                                                controller: _jenisID,
                                                decoration: InputDecoration(
                                                  hintText: "Pilih Jenis ID",
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Nomor Identitas",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            TextField(
                                              controller: _noID,
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade300),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade300),
                                                ),
                                                disabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade300),
                                                ),
                                                hintText:
                                                    "Masukkan Nomor Identitas",
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "Usia",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                        TextField(
                                                          controller: _usia,
                                                          decoration:
                                                              InputDecoration(
                                                            enabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade300),
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade300),
                                                            ),
                                                            disabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade300),
                                                            ),
                                                            hintText:
                                                                "Masukkan Usia",
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                    flex: 2,
                                                    child: Column(
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "Kota/Kabupaten",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context:
                                                                    context,
                                                                isScrollControlled:
                                                                    true,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return Scaffold(
                                                                      appBar:
                                                                          AppBar(
                                                                        backgroundColor:
                                                                            HexColor("#0D54A5"),
                                                                        elevation:
                                                                            0,
                                                                        toolbarHeight:
                                                                            100,
                                                                        automaticallyImplyLeading:
                                                                            false,
                                                                        bottom:
                                                                            PreferredSize(
                                                                          child: Container(
                                                                              margin: const EdgeInsets.only(
                                                                                left: 10.0,
                                                                                right: 10.0,
                                                                                bottom: 10.0,
                                                                              ),
                                                                              child: Column(
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: Alignment.centerLeft,
                                                                                        child: IconButton(
                                                                                          icon: const Icon(
                                                                                            Icons.close,
                                                                                            color: Colors.white,
                                                                                          ),
                                                                                          onPressed: () {
                                                                                            Navigator.of(context).pop();
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      const SizedBox(
                                                                                        width: 80,
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Text(
                                                                                          "KOTA/KABUPATEN",
                                                                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(
                                                                                    height: 10,
                                                                                  ),
                                                                                  TextField(
                                                                                    decoration: InputDecoration(
                                                                                      fillColor: HexColor("#F0F0F2"),
                                                                                      filled: true,
                                                                                      hintText: "Cari kota/kabupaten",
                                                                                      border: OutlineInputBorder(
                                                                                        borderSide: BorderSide(color: HexColor("#E2E1E5")),
                                                                                        borderRadius: BorderRadius.circular(10),
                                                                                      ),
                                                                                      contentPadding: const EdgeInsets.symmetric(
                                                                                        vertical: 5,
                                                                                        horizontal: 5,
                                                                                      ),
                                                                                      prefixIcon: Icon(Icons.search),
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              )),
                                                                          preferredSize:
                                                                              const Size.fromHeight(80.0),
                                                                        ),
                                                                      ),
                                                                      body: SingleChildScrollView(
                                                                          child: Container(
                                                                        height:
                                                                            620,
                                                                        child:
                                                                            Container(
                                                                          color:
                                                                              HexColor("#F0F0F2"),
                                                                          child: ListView.separated(
                                                                              separatorBuilder: (BuildContext context, int index) {
                                                                                return Divider(
                                                                                  color: Colors.grey.shade300,
                                                                                  thickness: 1.0,
                                                                                );
                                                                              },
                                                                              itemCount: kota.length,
                                                                              itemBuilder: (BuildContext context, int index) {
                                                                                return ListTile(
                                                                                  title: Text(kota[index]),
                                                                                  onTap: () {
                                                                                    _kota.text = kota[index];
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                );
                                                                              }),
                                                                        ),
                                                                      )));
                                                                });
                                                          },
                                                          child: TextField(
                                                            controller: _kota,
                                                            enabled: false,
                                                            decoration:
                                                                InputDecoration(
                                                              enabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300),
                                                              ),
                                                              focusedBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300),
                                                              ),
                                                              disabledBorder:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300),
                                                              ),
                                                              hintText:
                                                                  "Pilih Kota/Kabupaten",
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            MaterialButton(
                                              height: 50,
                                              elevation: 0,
                                              minWidth: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              color: HexColor("#FE914C"),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  penumpang.add(addPenumpang());
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
                      child: const Text(
                        "Tambah Data Penumpang",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
