import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class VerifikasiPage extends StatefulWidget {
  VerifikasiPage({Key? key}) : super(key: key);

  @override
  State<VerifikasiPage> createState() => _VerifikasiPageState();
}

class _VerifikasiPageState extends State<VerifikasiPage> {
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
                "Sisa waktu verifikasi",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                width: 55,
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
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Detail Penumpang",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Tambah",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        IntrinsicHeight(
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
            child: Column(children: [
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
                      "Giovani Anggasta",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.close,
                      size: 30,
                      color: HexColor("#0D54A5"),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.lightBlue[50],
                child: Row(children: [
                  Text(
                    "KTP",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "3107009208700120",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Terverifikasi",
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
              )
            ]),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        IntrinsicHeight(
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
            child: Column(children: [
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
                      "Joceline Stephani",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.close,
                      size: 30,
                      color: HexColor("#0D54A5"),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.lightBlue[50],
                child: Row(children: [
                  Text(
                    "Paspor",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "3107009208700120",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Terverifikasi",
                    style: TextStyle(fontSize: 16),
                  ),
                ]),
              )
            ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 100,
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
                  "Jika hasil tes COVID tidak ada, pastikan sudah melakukan tes di lab yang sudah terdaftar disini",
                  style: TextStyle(fontSize: 16, color: Colors.orange[700]),
                ))
              ],
            ))),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
