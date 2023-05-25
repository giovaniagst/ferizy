import 'package:dotted_line/dotted_line.dart';
import 'package:ferizy/isi_data_refund.dart';
import 'package:ferizy/ketentuan_refund_view.dart';
import 'package:ferizy/refund_view.dart';
import 'package:ferizy/rincian_refund_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RefundStepPage extends StatefulWidget {
  RefundStepPage({Key? key}) : super(key: key);

  @override
  State<RefundStepPage> createState() => _RefundStepPageState();
}

class _RefundStepPageState extends State<RefundStepPage> {
  int currentStep = 0;

  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep += 1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep -= 1;
      });
    }
  }

  Future<bool> _showList() async {
    await Future.delayed(Duration(milliseconds: 300));
    return true;
  }

  double _height = 60;
  bool _isExpanded = false;

  List<String> dataHarga = ["Biaya Reschedule (50%)", "Total Harga Tiket"];

  List<String> harga = ["- Rp 228.850", "Rp 457.700"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            if (currentStep == 0) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RefundPage()));
            } else {
              cancelStep();
            }
          },
        ),
        title: currentStep == 0
            ? Text("Ketentuan Pembatalan Tiket")
            : currentStep == 1
                ? Text("Isi Data Pembatalan Tiket")
                : Text("Rincian Pembatalan Tiket"),
        centerTitle: true,
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 110,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/ferry.png",
                            scale: 1.8,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "21 April 2023",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Column(children: [
                            Text("Merak",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center),
                            Text("Banten",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                                textAlign: TextAlign.center)
                          ]),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: HexColor("#FE914C"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(children: [
                            Text("Bakauheni",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center),
                            Text("Lampung",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                                textAlign: TextAlign.center)
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "11.00 - 12.00 WIB",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Kendaraan (Golongan IVA)",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 4.0,
                            backgroundColor: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Reguler",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Theme(
          data: ThemeData(
            canvasColor: HexColor("#0D54A5"),
            // primarySwatch: buildMaterialColor(Color(0xffFE914C)),
            colorScheme: Theme.of(context).colorScheme.copyWith(
                onSurface: Colors.grey.shade200,
                primary: Color(0xffFE914C),
                onBackground: Colors.grey),
          ),
          child: Stepper(
            type: StepperType.horizontal,
            currentStep: currentStep,
            steps: [
              Step(
                title: Text("Ketentuan", style: TextStyle(color: Colors.white)),
                content: Column(
                  children: [
                    KetentuanRefundPage(),
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
                        continueStep();
                      },
                      child: const Text(
                        "Lanjutkan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                isActive: currentStep == 0,
                state: currentStep > 0 ? StepState.complete : StepState.indexed,
              ),
              Step(
                  title: Text(
                    "Isi Data",
                    style: TextStyle(color: Colors.white),
                  ),
                  content: Column(children: [
                    IsiDataRefundPage(),
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
                        continueStep();
                      },
                      child: const Text(
                        "Lanjutkan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
                  isActive: currentStep == 1,
                  state:
                      currentStep > 1 ? StepState.complete : StepState.indexed),
              Step(
                  title: Text("Rincian", style: TextStyle(color: Colors.white)),
                  content: Column(children: [RincianRefundPage()]),
                  isActive: currentStep == 2,
                  state:
                      currentStep > 2 ? StepState.complete : StepState.indexed),
            ],
          ),
        ),
      ),
      backgroundColor: HexColor("#F0F0F2"),
    );
  }
}
