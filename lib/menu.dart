import 'dart:ffi';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tea_time/black.dart';
import 'package:tea_time/lemon.dart';
import 'package:tea_time/matcha.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 360,
              decoration: BoxDecoration(
                color: Color(0xffffd5c1),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24,vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // text menu
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize:  36,
                        fontWeight:  FontWeight.bold,
                        height:  1.2125,
                        color:  Color(0xffc62b43),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child:
                      Container(
                        padding:  EdgeInsets.fromLTRB(15, 0, 0, 0),
                        width:  double.infinity,
                        height:  40,
                        decoration:  BoxDecoration (
                          color:  Color(0xffffffff),
                          borderRadius:  BorderRadius.circular(15),
                        ),
                        child:
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children:  [
                            Icon(Icons.search_rounded),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Search tea',
                              style:  TextStyle (
                                fontStyle: FontStyle.normal,
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.2,
                                color:  Color(0xff8a8a8e),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Hot Tea',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize:  24,
                        fontWeight:  FontWeight.w600,
                        height:  2,
                        color:  Color(0xffc62b43),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(4, 0, 0, 16),
                      width: double.infinity,
                      height: 130,
                      child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const BlackPage()));
                              },
                              style:  TextButton.styleFrom (
                                padding:  EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                                width: 158,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Black Tea',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize:  22,
                                        fontWeight:  FontWeight.w500,
                                        height:  2,
                                        color:  Color(0xff5e5757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset("assets/h.png",width: 100),
                                    SizedBox(height: 6),
                                    Container(
                                      child:
                                      Row (
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          Text(
                                            '\$ 5.5',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize:  22,
                                              fontWeight:  FontWeight.w500,
                                              height:  2,
                                              color:  Color(0xffc62b43),
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon( Icons.favorite , size: 25, color: Color(0xffc62b43)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const MatchaPage()));
                              },
                              style:  TextButton.styleFrom (
                                padding:  EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                                width: 158,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Matcha Tea',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize:  22,
                                        fontWeight:  FontWeight.w500,
                                        height:  2,
                                        color:  Color(0xff5e5757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset("assets/h.png",width: 100),
                                    SizedBox(height: 6),
                                    Container(
                                      child:
                                      Row (
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          Text(
                                            '\$ 5.5',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize:  22,
                                              fontWeight:  FontWeight.w500,
                                              height:  2,
                                              color:  Color(0xffc62b43),
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon( Icons.favorite , size: 25, color: Color(0xffc62b43)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(4, 0, 0, 16),
                      width:  double.infinity,
                      height:  130,
                      child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: TextButton(
                              onPressed: () {},
                              style:  TextButton.styleFrom (
                                padding:  EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                                width: 158,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'White Tea',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize:  22,
                                        fontWeight:  FontWeight.w500,
                                        height:  2,
                                        color:  Color(0xff5e5757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset("assets/h.png",width: 100),
                                    SizedBox(height: 6),
                                    Container(
                                      child:
                                      Row (
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          Text(
                                            '\$ 5.5',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize:  22,
                                              fontWeight:  FontWeight.w500,
                                              height:  2,
                                              color:  Color(0xffc62b43),
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon( Icons.favorite , size: 25, color: Color(0xffc62b43)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: TextButton(
                              onPressed: () {},
                              style:  TextButton.styleFrom (
                                padding:  EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                                width: 158,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Green Tea',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize:  22,
                                        fontWeight:  FontWeight.w500,
                                        height:  2,
                                        color:  Color(0xff5e5757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset("assets/h.png",width: 100),
                                    SizedBox(height: 6),
                                    Container(
                                      child:
                                      Row (
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          Text(
                                            '\$ 5.5',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize:  22,
                                              fontWeight:  FontWeight.w500,
                                              height:  2,
                                              color:  Color(0xffc62b43),
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon( Icons.favorite , size: 25, color: Color(0xffc62b43)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Iced Tea',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize:  24,
                        fontWeight:  FontWeight.w600,
                        height:  2,
                        color:  Color(0xffc62b43),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(4, 0, 0, 16),
                      width:  double.infinity,
                      height:  130,
                      child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const LemonPage()));
                              },
                              style:  TextButton.styleFrom (
                                padding:  EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                                width: 158,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lemon Tea',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize:  22,
                                        fontWeight:  FontWeight.w500,
                                        height:  2,
                                        color:  Color(0xff5e5757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset("assets/h.png",width: 100),
                                    SizedBox(height: 6),
                                    Container(
                                      child:
                                      Row (
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          Text(
                                            '\$ 5.5',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize:  22,
                                              fontWeight:  FontWeight.w500,
                                              height:  2,
                                              color:  Color(0xffc62b43),
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon( Icons.favorite , size: 25, color: Color(0xffc62b43)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const MatchaPage()));
                              },
                              style:  TextButton.styleFrom (
                                padding:  EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                                width: 158,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Green Tea',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize:  22,
                                        fontWeight:  FontWeight.w500,
                                        height:  2,
                                        color:  Color(0xff5e5757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset("assets/h.png",width: 100),
                                    SizedBox(height: 6),
                                    Container(
                                      child:
                                      Row (
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          Text(
                                            '\$ 5.5',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize:  22,
                                              fontWeight:  FontWeight.w500,
                                              height:  2,
                                              color:  Color(0xffc62b43),
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon( Icons.favorite , size: 25, color: Color(0xffc62b43)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(4, 0, 0, 16),
                      width:  double.infinity,
                      height:  130,
                      child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const BlackPage()));
                              },
                              style:  TextButton.styleFrom (
                                padding:  EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                                width: 158,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Black Tea',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize:  22,
                                        fontWeight:  FontWeight.w500,
                                        height:  2,
                                        color:  Color(0xff5e5757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset("assets/h.png",width: 100),
                                    SizedBox(height: 6),
                                    Container(
                                      child:
                                      Row (
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          Text(
                                            '\$ 5.5',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize:  22,
                                              fontWeight:  FontWeight.w500,
                                              height:  2,
                                              color:  Color(0xffc62b43),
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon( Icons.favorite , size: 25, color: Color(0xffc62b43)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const MatchaPage()));
                              },
                              style:  TextButton.styleFrom (
                                padding:  EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                                width: 158,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sweet Tea',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize:  22,
                                        fontWeight:  FontWeight.w500,
                                        height:  2,
                                        color:  Color(0xff5e5757),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset("assets/h.png",width: 100),
                                    SizedBox(height: 6),
                                    Container(
                                      child:
                                      Row (
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const <Widget>[
                                          Text(
                                            '\$ 5.5',
                                            style: TextStyle(
                                              fontStyle: FontStyle.normal,
                                              fontSize:  22,
                                              fontWeight:  FontWeight.w500,
                                              height:  2,
                                              color:  Color(0xffc62b43),
                                            ),
                                          ),
                                          SizedBox(width: 50),
                                          Icon( Icons.favorite , size: 25, color: Color(0xffc62b43)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
