import 'package:ferizy/reschedule_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PembayaranReschedulePage extends StatefulWidget {
  PembayaranReschedulePage({Key? key}) : super(key: key);

  @override
  State<PembayaranReschedulePage> createState() =>
      _PembayaranReschedulePageState();
}

class _PembayaranReschedulePageState extends State<PembayaranReschedulePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orange.shade100,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(
                Icons.access_time,
                color: HexColor("#FE914C"),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Batas waktu pembayaran",
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.orange.shade400,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  "00",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                ":",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.orange.shade400,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  "14",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                ":",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.orange.shade400,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  "59",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
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
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/money.png",
                      scale: 1.7,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Scan QR Code",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/images/qris.png",
                  scale: 1.7,
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset("assets/images/qr.png"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "PT. ASDP Indonesia Ferry",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.lightBlue[50],
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  "Simpan gambar",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.save_alt_rounded,
                  color: HexColor("#0D54A5"),
                ),
              ]),
            )
          ]),
        ),
        SizedBox(
          height: 25,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Sudah menyelesaikan pembayaran?",
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
          child: Column(
            children: [
              Text(
                "Setelah pembayaran berhasil, dokumen e-tiket dapat diunduh melalui e-mail atau menu “Pembelian” di Web Reservation atau Mobile Application Ferizy",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: 10,
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RescheduleDetailPage()));
                },
                child: const Text(
                  "Sudah Menyelesaikan Pembayaran",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
