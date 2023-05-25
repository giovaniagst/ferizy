import 'package:ferizy/beranda_view.dart';
import 'package:ferizy/pembelian_view.dart';
import 'package:ferizy/profile_view.dart';
import 'package:ferizy/riwayat_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? _selectedIndex;

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  List<Widget> _widgetOptions = <Widget>[
    BerandaPage(),
    PembelianPage(),
    RiwayatPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.tickets_fill),
            label: "Pembelian",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "Riwayat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex!,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: HexColor("#0D54A5"),
        onTap: _onItemTapped,
      ),
      backgroundColor: HexColor("#F0F0F2"),
      body: _widgetOptions.elementAt(_selectedIndex!),
    );
  }
}
