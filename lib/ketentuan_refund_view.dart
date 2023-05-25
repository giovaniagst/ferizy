import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class KetentuanRefundPage extends StatefulWidget {
  KetentuanRefundPage({Key? key}) : super(key: key);

  @override
  State<KetentuanRefundPage> createState() => _KetentuanRefundPageState();
}

class _KetentuanRefundPageState extends State<KetentuanRefundPage> {
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
                            'Pengajuan refund hanya dapat dilakukan minimal J-2 (dua jam sebelum) dari jadwal masuk pelabuhan')),
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
                            'Tiket yang dapat di-refund adalah tiket dengan nominal sebesar Rp 50.000 dalam satu invoice pembayaran')),
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
                            'Terdapat biaya pembatalan sebesar 50% dari biaya yang sudah dipoting biaya administrasi')),
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
                Text("Saya menyetujui syarat dan ketentuan\npembatalan tiket")
              ]),
            )
          ]),
        )
      ],
    );
  }
}
