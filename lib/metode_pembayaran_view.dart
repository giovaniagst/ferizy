import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dotted_line/dotted_line.dart';

class MetodePembayaranPage extends StatefulWidget {
  MetodePembayaranPage({Key? key}) : super(key: key);

  @override
  State<MetodePembayaranPage> createState() => _MetodePembayaranPageState();
}

class _MetodePembayaranPageState extends State<MetodePembayaranPage> {
  late String pembayaranLogo;
  late String metodePembayaran;

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
  void initState() {
    pembayaranLogo = "assets/images/bca.png";
    metodePembayaran = "BCA Virtual Account";
    super.initState();
  }

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
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Metode Pembayaran",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        IntrinsicHeight(
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
            child: Row(
              children: [
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
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 0,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ListView.separated(
                                            separatorBuilder:
                                                (BuildContext context,
                                                    int index) {
                                              return Divider(
                                                color: Colors.grey.shade400,
                                                thickness: 1.0,
                                              );
                                            },
                                            itemCount: pembayaranVA.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
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
                                                        pembayaranVAImage[
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
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 0,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ListView.separated(
                                            separatorBuilder:
                                                (BuildContext context,
                                                    int index) {
                                              return Divider(
                                                color: Colors.grey.shade400,
                                                thickness: 1.0,
                                              );
                                            },
                                            itemCount: pembayaranEmoney.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
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
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 190,
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
                  "Pembatalan tiket hanya berlaku untuk pembelian tiket dengan minimal harga Rp 50.000. Selanjutnya akan dikenakan biaya sebesar 25% dari harga tiket (paling sedikit Rp 25.000) dan biaya pembatalan sebesar 50% dari total harga tiket setelah dikenai biaya administrasi",
                  style: TextStyle(fontSize: 16, color: Colors.orange[700]),
                ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
