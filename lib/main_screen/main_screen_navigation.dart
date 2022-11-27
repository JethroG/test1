import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_for_test/bottom_navigation_bar_pages/my_collection_screen/my_collection_screen.dart';
import 'package:test_for_test/bottom_navigation_bar_pages/scan_screen/scan_screen.dart';
import 'package:test_for_test/bottom_navigation_bar_pages/setting_screen/setting_screen.dart';
import 'package:test_for_test/bottom_navigation_bar_pages/shop_screen/shop_screen.dart';
import 'package:test_for_test/utils/color_scheme.dart';
import 'package:test_for_test/utils/text_fonts.dart';

const String _scan = 'assets/graphics/Scan.svg';
final Widget _scanSvg = SvgPicture.asset(_scan);

const String _collection = 'assets/graphics/SquaresFour.svg';
final Widget _collectionSvg = SvgPicture.asset(_collection);

const String _shop = 'assets/graphics/Vector.svg';
final Widget _shopSvg = SvgPicture.asset(_shop);

const String _setting = 'assets/graphics/GearSix.svg';
final Widget _settingSvg = SvgPicture.asset(_setting);

class MainScreenNavigation extends StatefulWidget {
  const MainScreenNavigation({Key? key}) : super(key: key);

  @override
  State<MainScreenNavigation> createState() => _MainScreenNavigationState();
}

class _MainScreenNavigationState extends State<MainScreenNavigation> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final widgetOptions = [
      ScanScreen(),
      MyCollectionScreen(),
      ShopScreen(),
      SettingScreen()
    ];

    return Scaffold(
      body: Container(
        color: primaryBlueDark,
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Theme(
      data: ThemeData(
      canvasColor: primaryBlueDark,
      ),
      child: BottomNavigationBar(
        backgroundColor: primaryBlueDark,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _scanSvg,
            activeIcon: SvgPicture.asset(_scan,color: Colors.white,),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
              icon: _collectionSvg,
              activeIcon: SvgPicture.asset(_collection,color: Colors.white,),
              label: 'Collection',),
          BottomNavigationBarItem(
              icon: _shopSvg,
              activeIcon: SvgPicture.asset(_shop,color: Colors.white,),
              label: 'Shop',),
          BottomNavigationBarItem(
              icon: _settingSvg,
              activeIcon: SvgPicture.asset(_setting,color: Colors.white,),
              label: 'Settings')],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: latoRegularTextStyle.copyWith(
            color: Colors.white, fontSize: 12, height: 1,fontWeight: FontWeight.w400),
      ),
    ));
  }
}
