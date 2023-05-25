import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class IsiDataPage extends StatefulWidget {
  IsiDataPage({Key? key}) : super(key: key);

  @override
  State<IsiDataPage> createState() => _IsiDataPageState();
}

class _IsiDataPageState extends State<IsiDataPage> {
  final _namaLengkap = TextEditingController();
  final _noHp = TextEditingController();
  final _email = TextEditingController();
  final _titelGea = TextEditingController();
  final _JenisIDGea = TextEditingController();
  final _noIDGea = TextEditingController();
  final _usiaGea = TextEditingController();
  final _kotaGea = TextEditingController();
  final _titelCeline = TextEditingController();
  final _JenisIDCeline = TextEditingController();
  final _noIDCeline = TextEditingController();
  final _kotaCeline = TextEditingController();
  final _namaCeline = TextEditingController();
  final _usiaCeline = TextEditingController();
  final _noPolisi = TextEditingController();

  String namaLengkap = "Giovani Anggasta";
  String noHp = "087786255996";
  String email = "giovaniagst@gmail.com";
  String penumpangDewasa = "Dewasa 1";
  String penumpangAnak = "Anak 1";
  String? namaCeline;

  String jenisIDGea = "KTP";
  String noIDGea = "3107009208700120";

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
  List<String> nama = [
    "Giovani Anggasta",
    "Joceline Stephani",
    "Tony Stark",
    "Charles Aditya"
  ];

  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  @override
  void initState() {
    super.initState();
    kontak = [
      InkWell(
        onTap: () {
          setState(() {
            kontak.clear();
            dewasa.add(addDewasaContainer(jenisIDGea, noIDGea));
            penumpangDewasa = namaLengkap;
            _titelGea.text = "Nona";
            _JenisIDGea.text = jenisIDGea;
            _noIDGea.text = noIDGea;
            _kotaGea.text = "Kota Jakarta Selatan";
            _usiaGea.text = "22";
          });
        },
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.lightBlue[50],
          height: 45,
          child: Row(children: [
            Icon(
              Icons.add_circle_outlined,
              color: HexColor("#0D54A5"),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Tambah sebagai penumpang",
              style: TextStyle(fontSize: 16),
            )
          ]),
        ),
      )
    ];
  }

  Widget addDewasaContainer(jenisID, noID) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.lightBlue[50],
      child: Row(children: [
        Text(
          jenisID,
          style: TextStyle(fontSize: 16),
        ),
        Spacer(),
        Text(
          noID,
          style: TextStyle(fontSize: 16),
        ),
      ]),
    );
  }

  List<Widget> dewasa = [];
  List<Widget> kontak = [];
  List<Widget> anak = [];
  List<Widget> kendaraan = [];

  @override
  Widget build(BuildContext context) {
    _namaLengkap.text = namaLengkap;
    _noHp.text = noHp;
    _email.text = email;
    return Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Detail Kontak",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
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
                                  "Detail Kontak",
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
                                  decoration: InputDecoration(
                                    hintText: "Masukkan Nama Lengkap",
                                    helperText:
                                        "Isi sesuai dengan Nama yang tertera di KTP/SIM/Paspor\n(tanpa gelar/karakter khusus)",
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
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Nomor Telepon",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                TextField(
                                  controller: _noHp,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan Nomor Telepon",
                                    helperText: "Contoh: 081234278456",
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
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Alamat Email",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                TextField(
                                  controller: _email,
                                  decoration: InputDecoration(
                                    hintText: "Masukkan Email",
                                    helperText: "Contoh: nama@contoh.com",
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
                                  minWidth: MediaQuery.of(context).size.width,
                                  color: HexColor("#FE914C"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  onPressed: () {
                                    namaLengkap = _namaLengkap.text;
                                    noHp = _noHp.text;
                                    email = _email.text;
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
          child: IntrinsicHeight(
            child: Container(
                width: MediaQuery.of(context).size.width,
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
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    namaLengkap,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(email,
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                    SizedBox(width: 10),
                                    CircleAvatar(
                                      radius: 4.0,
                                      backgroundColor: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(noHp,
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Icon(
                            Icons.navigate_next_rounded,
                            size: 30,
                            color: HexColor("#0D54A5"),
                          )
                        ],
                      ),
                    ),
                    ...kontak
                  ],
                )),
          )),
      SizedBox(
        height: 20,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Detail Penumpang",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
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
                                "Detail Penumpang",
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
                                      builder: (BuildContext context) {
                                        return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  AppBar(
                                                    title: const Text(
                                                        "PILIH TITEL"),
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
                                                    height: 210,
                                                    child: ListView.separated(
                                                        separatorBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return Divider(
                                                            color: Colors
                                                                .grey.shade300,
                                                            thickness: 1.0,
                                                          );
                                                        },
                                                        itemCount: titel.length,
                                                        itemBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return ListTile(
                                                            title: Text(
                                                                titel[index]),
                                                            onTap: () {
                                                              _titelGea.text =
                                                                  titel[index];
                                                              Navigator.pop(
                                                                  context);
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
                                  controller: _titelGea,
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
                                    hintText: "Masukkan Nama Lengkap",
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
                                      builder: (BuildContext context) {
                                        return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  AppBar(
                                                    title: const Text(
                                                        "PILIH JENIS ID"),
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
                                                    height: 275,
                                                    child: ListView.separated(
                                                        separatorBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return Divider(
                                                            color: Colors
                                                                .grey.shade300,
                                                            thickness: 1.0,
                                                          );
                                                        },
                                                        itemCount:
                                                            jenisID.length,
                                                        itemBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return ListTile(
                                                            title: Text(
                                                                jenisID[index]),
                                                            onTap: () {
                                                              _JenisIDGea.text =
                                                                  jenisID[
                                                                      index];
                                                              Navigator.pop(
                                                                  context);
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
                                  controller: _JenisIDGea,
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
                                controller: _noIDGea,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  disabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  hintText: "Masukkan Nomor Identitas",
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
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Usia",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          TextField(
                                            controller: _usiaGea,
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
                                              hintText: "Masukkan Usia",
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
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Kota/Kabupaten",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet(
                                                  context: context,
                                                  isScrollControlled: true,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Scaffold(
                                                        appBar: AppBar(
                                                          backgroundColor:
                                                              HexColor(
                                                                  "#0D54A5"),
                                                          elevation: 0,
                                                          toolbarHeight: 100,
                                                          automaticallyImplyLeading:
                                                              false,
                                                          bottom: PreferredSize(
                                                            child: Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                        .only(
                                                                  left: 10.0,
                                                                  right: 10.0,
                                                                  bottom: 10.0,
                                                                ),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          child:
                                                                              IconButton(
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.close,
                                                                              color: Colors.white,
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              80,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            "KOTA/KABUPATEN",
                                                                            style: TextStyle(
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Colors.white),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        fillColor:
                                                                            HexColor("#F0F0F2"),
                                                                        filled:
                                                                            true,
                                                                        hintText:
                                                                            "Cari kota/kabupaten",
                                                                        border:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(color: HexColor("#E2E1E5")),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        contentPadding:
                                                                            const EdgeInsets.symmetric(
                                                                          vertical:
                                                                              5,
                                                                          horizontal:
                                                                              5,
                                                                        ),
                                                                        prefixIcon:
                                                                            Icon(Icons.search),
                                                                      ),
                                                                    )
                                                                  ],
                                                                )),
                                                            preferredSize:
                                                                const Size
                                                                        .fromHeight(
                                                                    80.0),
                                                          ),
                                                        ),
                                                        body:
                                                            SingleChildScrollView(
                                                                child:
                                                                    Container(
                                                          height: 620,
                                                          child: Container(
                                                            color: HexColor(
                                                                "#F0F0F2"),
                                                            child: ListView
                                                                .separated(
                                                                    separatorBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            int
                                                                                index) {
                                                                      return Divider(
                                                                        color: Colors
                                                                            .grey
                                                                            .shade300,
                                                                        thickness:
                                                                            1.0,
                                                                      );
                                                                    },
                                                                    itemCount: kota
                                                                        .length,
                                                                    itemBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            int index) {
                                                                      return ListTile(
                                                                        title: Text(
                                                                            kota[index]),
                                                                        onTap:
                                                                            () {
                                                                          _kotaGea.text =
                                                                              kota[index];
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                      );
                                                                    }),
                                                          ),
                                                        )));
                                                  });
                                            },
                                            child: TextField(
                                              controller: _kotaGea,
                                              enabled: false,
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
                                minWidth: MediaQuery.of(context).size.width,
                                color: HexColor("#FE914C"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                onPressed: () {
                                  namaLengkap = _namaLengkap.text;
                                  noHp = _noHp.text;
                                  email = _email.text;
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
        child: IntrinsicHeight(
          child: Container(
              width: MediaQuery.of(context).size.width,
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
                      Icon(
                        Icons.person_outline,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        penumpangDewasa,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(
                        Icons.navigate_next_rounded,
                        size: 30,
                        color: HexColor("#0D54A5"),
                      )
                    ]),
                  ),
                  ...dewasa
                ],
              )),
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
                                "Detail Penumpang",
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
                                      builder: (BuildContext context) {
                                        return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  AppBar(
                                                    title: const Text(
                                                        "PILIH TITEL"),
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
                                                    height: 210,
                                                    child: ListView.separated(
                                                        separatorBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return Divider(
                                                            color: Colors
                                                                .grey.shade300,
                                                            thickness: 1.0,
                                                          );
                                                        },
                                                        itemCount: titel.length,
                                                        itemBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return ListTile(
                                                            title: Text(
                                                                titel[index]),
                                                            onTap: () {
                                                              _titelCeline
                                                                      .text =
                                                                  titel[index];
                                                              Navigator.pop(
                                                                  context);
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
                                  controller: _titelCeline,
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
                              Autocomplete(
                                optionsBuilder:
                                    (TextEditingValue textEditingValue) {
                                  return nama.where((String option) {
                                    return option.contains(
                                        textEditingValue.text.toLowerCase());
                                  });
                                },
                                onSelected: (String selection) {
                                  _namaCeline.text = selection;
                                  _JenisIDCeline.text = "Paspor";
                                  _noIDCeline.text = "3001982090012300";
                                  _kotaCeline.text = "Kota Jakarta Selatan";
                                  _usiaCeline.text = "4";
                                },
                                fieldViewBuilder: (BuildContext context,
                                    TextEditingController textController,
                                    FocusNode focusNode,
                                    VoidCallback onFieldSubmitted) {
                                  _namaCeline.value = textController.value;
                                  return TextFormField(
                                    controller: textController,
                                    focusNode: focusNode,
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
                                        hintText: "Masukkan Nama Lengkap"),
                                  );
                                },
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
                                      builder: (BuildContext context) {
                                        return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  AppBar(
                                                    title: const Text(
                                                        "PILIH JENIS ID"),
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
                                                    height: 275,
                                                    child: ListView.separated(
                                                        separatorBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return Divider(
                                                            color: Colors
                                                                .grey.shade300,
                                                            thickness: 1.0,
                                                          );
                                                        },
                                                        itemCount:
                                                            jenisID.length,
                                                        itemBuilder:
                                                            (BuildContext
                                                                    context,
                                                                int index) {
                                                          return ListTile(
                                                            title: Text(
                                                                jenisID[index]),
                                                            onTap: () {
                                                              _JenisIDCeline
                                                                      .text =
                                                                  jenisID[
                                                                      index];
                                                              Navigator.pop(
                                                                  context);
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
                                  controller: _JenisIDCeline,
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
                                controller: _noIDCeline,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  disabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  hintText: "Masukkan Nomor Identitas",
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
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Usia",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          TextField(
                                            controller: _usiaCeline,
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
                                              hintText: "Masukkan Usia",
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
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Kota/Kabupaten",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet(
                                                  context: context,
                                                  isScrollControlled: true,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Scaffold(
                                                        appBar: AppBar(
                                                          backgroundColor:
                                                              HexColor(
                                                                  "#0D54A5"),
                                                          elevation: 0,
                                                          toolbarHeight: 100,
                                                          automaticallyImplyLeading:
                                                              false,
                                                          bottom: PreferredSize(
                                                            child: Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                        .only(
                                                                  left: 10.0,
                                                                  right: 10.0,
                                                                  bottom: 10.0,
                                                                ),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          child:
                                                                              IconButton(
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.close,
                                                                              color: Colors.white,
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.of(context).pop();
                                                                            },
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              80,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            "KOTA/KABUPATEN",
                                                                            style: TextStyle(
                                                                                fontSize: 16,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Colors.white),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        fillColor:
                                                                            HexColor("#F0F0F2"),
                                                                        filled:
                                                                            true,
                                                                        hintText:
                                                                            "Cari kota/kabupaten",
                                                                        border:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(color: HexColor("#E2E1E5")),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        contentPadding:
                                                                            const EdgeInsets.symmetric(
                                                                          vertical:
                                                                              5,
                                                                          horizontal:
                                                                              5,
                                                                        ),
                                                                        prefixIcon:
                                                                            Icon(Icons.search),
                                                                      ),
                                                                    )
                                                                  ],
                                                                )),
                                                            preferredSize:
                                                                const Size
                                                                        .fromHeight(
                                                                    80.0),
                                                          ),
                                                        ),
                                                        body:
                                                            SingleChildScrollView(
                                                                child:
                                                                    Container(
                                                          height: 620,
                                                          child: Container(
                                                            color: HexColor(
                                                                "#F0F0F2"),
                                                            child: ListView
                                                                .separated(
                                                                    separatorBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            int
                                                                                index) {
                                                                      return Divider(
                                                                        color: Colors
                                                                            .grey
                                                                            .shade300,
                                                                        thickness:
                                                                            1.0,
                                                                      );
                                                                    },
                                                                    itemCount: kota
                                                                        .length,
                                                                    itemBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            int index) {
                                                                      return ListTile(
                                                                        title: Text(
                                                                            kota[index]),
                                                                        onTap:
                                                                            () {
                                                                          _kotaGea.text =
                                                                              kota[index];
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                      );
                                                                    }),
                                                          ),
                                                        )));
                                                  });
                                            },
                                            child: TextField(
                                              controller: _kotaCeline,
                                              enabled: false,
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
                                minWidth: MediaQuery.of(context).size.width,
                                color: HexColor("#FE914C"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                onPressed: () {
                                  penumpangAnak = _namaCeline.text;
                                  setState(() {
                                    anak.clear();
                                    anak.add(addDewasaContainer(
                                        _JenisIDCeline.text, _noIDCeline.text));
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
        child: IntrinsicHeight(
          child: Container(
              width: MediaQuery.of(context).size.width,
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            penumpangAnak,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.navigate_next_rounded,
                            size: 30,
                            color: HexColor("#0D54A5"),
                          )
                        ]),
                  ),
                  ...anak
                ],
              )),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Detail Kendaraan",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
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
                                "Detail Kendaraan",
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
                                  "Nomor Polisi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextField(
                                controller: _noPolisi,
                                decoration: InputDecoration(
                                  hintText: "Masukkan No. Polisi (tanpa spasi)",
                                  helperText: "Contoh: B1234AB",
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                  disabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.orange[100],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(20),
                                  child: Center(
                                      child: Row(
                                    children: [
                                      Icon(Icons.info_outline,
                                          color: Colors.orange[700]),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Isi Nomor Polisi sesuai dengan Nomor Polisi yang tertera pada Surat Tanda Nomor Kendaraan (STNK). Golongan Kendaraan yang tidak sesuai akan dikenakan biaya tambahan di Pelabuhan",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.orange[700]),
                                      ))
                                    ],
                                  ))),
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
                                    kendaraan.clear();
                                    kendaraan.add(addDewasaContainer(
                                        "No. Polisi", _noPolisi.text));
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
        child: IntrinsicHeight(
          child: Container(
              width: MediaQuery.of(context).size.width,
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
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/car.png",
                            scale: 1.8,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Golongan IVA",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Icon(
                            Icons.navigate_next_rounded,
                            size: 30,
                            color: HexColor("#0D54A5"),
                          )
                        ]),
                  ),
                  ...kendaraan
                ],
              )),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
          height: 170,
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.circular(5),
          ),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Center(
              child: Row(
            children: [
              Icon(Icons.info_outline, color: Colors.orange[700]),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                "Sesuai Peraturan Menteri Perhubungan Nomor 25 Tahun 2016 tentang Daftar Penumpang dan Kendaraan Angkutan Penyeberangan, apabila identitas dan jumlah penumpang dalam kendaraan tidak sesuai maka ASDP dapat menolak tiket Anda",
                style: TextStyle(fontSize: 16, color: Colors.orange[700]),
              ))
            ],
          ))),
      SizedBox(
        height: 20,
      ),
    ]);
  }
}
