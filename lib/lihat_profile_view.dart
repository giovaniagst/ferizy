import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LihatProfilePage extends StatefulWidget {
  LihatProfilePage({Key? key}) : super(key: key);

  @override
  State<LihatProfilePage> createState() => _LihatProfilePageState();
}

class _LihatProfilePageState extends State<LihatProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        centerTitle: true,
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: HexColor("#F0F0F2"),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Column(children: [
          Row(
            children: [
              Text(
                "Informasi Pribadi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              MaterialButton(
                height: 30,
                elevation: 0,
                minWidth: 100,
                color: HexColor("#FE914C"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {},
                child: const Text(
                  "Ubah",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
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
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
                  child: Row(children: [
                    Text(
                      "Nama Lengkap",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "Giovani Anggasta",
                      style: TextStyle(fontSize: 16),
                    )
                  ]),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Row(children: [
                    Text(
                      "NIK",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "310xxxxxxxxxxxxx",
                      style: TextStyle(fontSize: 16),
                    )
                  ]),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Row(children: [
                    Text(
                      "E-mail",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "giovaniagst@gmail.com",
                      style: TextStyle(fontSize: 16),
                    )
                  ]),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Row(children: [
                    Text(
                      "Jenis Kelamin",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "Perempuan",
                      style: TextStyle(fontSize: 16),
                    )
                  ]),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Row(children: [
                    Text(
                      "Tanggal Lahir",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "22 Desember 2000",
                      style: TextStyle(fontSize: 16),
                    )
                  ]),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Row(children: [
                    Text(
                      "Nomor Telepon",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "087786255996",
                      style: TextStyle(fontSize: 16),
                    )
                  ]),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 15),
                  child: Row(children: [
                    Text(
                      "Kota/Kabupaten",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    Spacer(),
                    Text(
                      "Kota Jakarta Selatan",
                      style: TextStyle(fontSize: 16),
                    )
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Pengaturan Akun",
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
              Text(
                "Ganti Kata Sandi",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: HexColor("#0D54A5"),
              )
            ]),
          )
        ]),
      )),
    );
  }
}
