import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class KetentuanReschedulePage extends StatefulWidget {
  KetentuanReschedulePage({Key? key}) : super(key: key);

  @override
  State<KetentuanReschedulePage> createState() =>
      _KetentuanReschedulePageState();
}

class _KetentuanReschedulePageState extends State<KetentuanReschedulePage> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    return HexColor("#0D54A5");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "Syarat dan Ketentuan",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
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
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1. '),
                    Expanded(
                        child: Text(
                            'Perubahan jadwal hanya dapat dilakukan melalui aplikasi maupun website milik PT ASDP Indonesia Ferry')),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2. '),
                    Expanded(
                        child: Text(
                            'Perubahan jadwal dapat dilakukan selambat-lambatnya 2 jam sebelum jadwal masuk pelabuhan selama kuota kapal masih tersedia')),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('3. '),
                    Expanded(
                        child: Text(
                            'Pengembalian dana dipoting biaya administrasi minimal sebesar 25% atau sedikitnya Rp 25.000 dari harga tiket terpadu')),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('4. '),
                    Expanded(
                        child: Text(
                            'Terdapat biaya perubahan jadwal sebesar 25% dari biaya yang sudah dipoting biaya administrasi')),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('5. '),
                    Expanded(
                        child: Text(
                            'Penambahan biaya dibayarkan melalui metode pembayaran antara lain melalui Tunai Modern Channel (gerai ritel) dengan kode bayar finpay, transfer Virtual Account melalui bank yang terdaftar, atau uang elektronik yang terdaftar')),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('6. '),
                    Expanded(
                        child: Text(
                            'Permohonan untuk melakukan perubahan jadwal kurang dari 2 (dua) jam sebelum jadwal masuk pelabuhan maka tiket akan dinyatakan hangus, dan tidak ada pengembalian dana apapun')),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('7. '),
                    Expanded(
                        child: Text(
                            'Pengguna jasa hanya boleh melakukan perubahan jadwal maksimal 1 (satu) kali dari setiap kode booking')),
                  ],
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade50,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
              ),
              child: Row(children: [
                Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                Text(
                    "Saya menyetujui syarat dan ketentuan\nperubahan jadwal tiket")
              ]),
            )
          ]),
        )
      ],
    );
  }
}
