import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 20),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Text(
                'My Cart',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize:  30,
                  fontWeight:  FontWeight.bold,
                  height:  1.2,
                  color:  Color(0xffc62b43),
                ),
              ),
            ),
            Container(
              padding:  EdgeInsets.fromLTRB(0, 32, 0, 0),
              width:  double.infinity,
              height: 525,
              decoration:  BoxDecoration (
                color:  Color(0xffffd5c1),
                borderRadius:  BorderRadius.only (
                  topLeft:  Radius.circular(20),
                  topRight:  Radius.circular(20),
                ),
              ),
              child: Column (
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin : EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    padding: EdgeInsets.all(10),
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(10),
                    ),
                    child: Row( children: [
                      Radio(value: "", groupValue: "", onChanged: (index){} , activeColor: Color(0xffffd5c1),),
                      Image.asset("assets/BT.png",width: 81, height: 68),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Black Tea',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize:  25,
                                height: 1.5,
                                fontWeight:  FontWeight.bold,
                                color: Color(0xff5e5757),
                              ),
                            ),
                            Text(
                              '\$ 5.5',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize:  25,
                                fontWeight:  FontWeight.bold,
                                color:  Color(0xffc62b43),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 22),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/T.png",width: 19, height: 22),
                            Row(
                              children: [
                                Icon(CupertinoIcons.plus_circle,size: 27, color:  Color(0xff5e5757)),
                                SizedBox(width: 7),
                                Text(
                                  '01',
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize:  25,
                                    fontWeight:  FontWeight.w400,
                                    color: Color(0xff5e5757),
                                  ),
                                ),
                                SizedBox(width: 7),
                                Icon(CupertinoIcons.minus_circle,size: 27, color:  Color(0xff5e5757)),
                              ],
                            )
                        ],
                        ),
                      )
                      ]
                    )
              ),
                  Container(
                      margin : EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      padding: EdgeInsets.all(10),
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:  BorderRadius.circular(10),
                      ),
                      child: Row( children: [
                        Radio(value: "", groupValue: "", onChanged: (index){} , activeColor: Color(0xffffd5c1),),
                        Image.asset("assets/Matcha.png",width: 81, height: 68),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Matcha Tea',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize:  25,
                                  height: 1.5,
                                  fontWeight:  FontWeight.bold,
                                  color: Color(0xff5e5757),
                                ),
                              ),
                              Text(
                                '\$ 5.5',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize:  25,
                                  fontWeight:  FontWeight.bold,
                                  color:  Color(0xffc62b43),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/T.png",width: 19, height: 22),
                              Row(
                                children: [
                                  Icon(CupertinoIcons.plus_circle,size: 27, color:  Color(0xff5e5757)),
                                  SizedBox(width: 7),
                                  Text(
                                    '01',
                                    style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontSize:  25,
                                      fontWeight:  FontWeight.w400,
                                      color: Color(0xff5e5757),
                                    ),
                                  ),
                                  SizedBox(width: 7),
                                  Icon(CupertinoIcons.minus_circle,size: 27, color:  Color(0xff5e5757)),
                                ],
                              )
                            ],
                          ),
                        )
                      ]
                      )
                  ),
      ]
            ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25 , vertical: 10),
              width:  double.infinity,
              height: 120,
              color:  Colors.white,
              child: Column (
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child : Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Total :',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize:  24,
                                fontWeight:  FontWeight.bold,
                                color:  Color(0xffc62b43),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 229,top: 0 , right: 10, bottom: 0),
                            child: Text(
                              '\$ 5.5',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize:  24,
                                fontWeight:  FontWeight.bold,
                                color:  Color(0xffc62b43),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25 , vertical: 10),
                      width: double.infinity,
                      height: 52,
                      decoration:  BoxDecoration (
                        color:  Color(0xffc62b43),
                        borderRadius:  BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Check Out',
                            style:  TextStyle (
                              fontStyle: FontStyle.normal,
                              fontSize: 27,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}