import 'package:flutter/material.dart';
import 'package:smart_home_deneme_2/pages/bottombar.dart';
import 'package:smart_home_deneme_2/pages/device_page.dart';
import 'package:smart_home_deneme_2/pages/home_page.dart';
import 'package:smart_home_deneme_2/pages/statistics_page.dart';
import 'package:smart_home_deneme_2/utils/const_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final basliklar = <String>[
    "domates",
    "marul",
    "salatalık",
    "badılcan",
  ];

  int _selectedPage = 0;
  List<Widget> _pages = [
    HomePage(),
    StatisticsPage(),
    HomePage(),
    DevicePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: _pages[_selectedPage],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: MainColors.greenColor,
          currentIndex: _selectedPage,
          onTap: (value) {
            setState(() {
              _selectedPage = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.cabin), label: "Statics"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.device_hub), label: "Device"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
