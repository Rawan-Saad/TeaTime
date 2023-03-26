import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tea_time/black.dart';
import 'package:tea_time/menu.dart';
import 'package:tea_time/sign.dart';

import 'mycart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final items = const [
    Icon(Icons.home ,size: 30 , color: Color(0xff5e5757)),
    Icon(Icons.shopping_cart ,size: 30 , color: Color(0xff5e5757)),
    Icon(Icons.person ,size: 30 , color: Color(0xff5e5757)),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 60,
        backgroundColor: Color(0xffc62b43),
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)
      ),
    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const MenuPage();
        break;
      case 1:
        widget = const CartPage();
        break;
      default:
        widget = const SignPage();
        break;
    }
    return widget;
  }
}