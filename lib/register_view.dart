import 'package:ferizy/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscurePass = true;
  bool _isObscurePassConf = true;
  final _formKey = GlobalKey<FormState>();
  final _pass = TextEditingController();

  @override
  void dispose() {
    _pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrasi"),
        centerTitle: true,
        backgroundColor: HexColor("#0D54A5"),
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 70,
          child: Center(
              child: RichText(
            text: TextSpan(
                text: "Sudah punya akun?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                      text: " Masuk sekarang!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => LoginPage())))
                ]),
          )),
        ),
        color: HexColor("#0D54A5"),
      ),
      body: SingleChildScrollView(
          // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Image.asset(
              "assets/images/ferizy-logo-color.png",
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const Align(
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
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama Lengkap harus diisi';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan Nama Lengkap",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor("#E2E1E5")),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email harus diisi';
                      }
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return 'Email tidak valid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan Email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor("#E2E1E5")),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Kata Sandi",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _pass,
                    obscureText: _isObscurePass,
                    obscuringCharacter: "•",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Kata Sandi harus diisi';
                      }
                      if (!RegExp(
                              r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$")
                          .hasMatch(value)) {
                        return 'Kata Sandi tidak valid';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan Kata Sandi",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor("#E2E1E5")),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObscurePass
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscurePass = !_isObscurePass;
                            });
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Konfirmasi Kata Sandi",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isObscurePassConf,
                    obscuringCharacter: "•",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Konfirmasi Kata Sandi harus diisi';
                      }
                      if (!RegExp(
                              r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$")
                          .hasMatch(value)) {
                        return 'Konfirmasi Kata Sandi tidak valid';
                      }
                      if (value != _pass.text) {
                        return 'Konfirmasi Kata Sandi tidak sesuai dengan Kata Sandi';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Masukkan Konfirmasi Kata Sandi",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor("#E2E1E5")),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      suffixIcon: IconButton(
                          icon: Icon(
                            _isObscurePassConf
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscurePassConf = !_isObscurePassConf;
                            });
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "*Kata sandi minimal berisi 8 karakter mengandung huruf besar kecil dan angka",
                        style: TextStyle(color: HexColor("#949393")),
                      )),
                  const SizedBox(
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
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text(
                      "Registrasi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
