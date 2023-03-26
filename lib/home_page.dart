// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tea_time/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffc3a7),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 140,
            ),
            Text(
              'Tea Time',
              style:  TextStyle (
                fontStyle: FontStyle.normal,
                fontSize:  36,
                fontWeight:  FontWeight.bold,
                height:  1.3888888889,
                color:  Color(0xffc62b43),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              width: double.infinity,
              child: Image.asset("assets/tea.gif"),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'A Cup of Tea, A Moment of Calm',
              style:  TextStyle (
                fontStyle: FontStyle.normal,
                fontSize:  22,
                fontWeight:  FontWeight.w500,
                height:  2.7777777778,
                color:  Color(0xff5e5757),
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Container(
              margin:  EdgeInsets.fromLTRB(43, 0, 43, 0),
              child:
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()),);
                  },
                  style:  TextButton.styleFrom (
                    padding:  EdgeInsets.zero,
                  ),
                  child:
                  Container(
                    padding:  EdgeInsets.fromLTRB(40, 4, 0, 4),
                    width:  double.infinity,
                    height:  66,
                    decoration:  BoxDecoration (
                      color: Colors.white,
                      borderRadius:  BorderRadius.circular(33),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      children:  [
                        Text(
                          'Get started',
                          style:  TextStyle (
                            fontStyle: FontStyle.normal,
                            fontSize:  30,
                            fontWeight:  FontWeight.bold,
                            height:  1.2125,
                            color:  Color(0xffc62b43),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          padding:  EdgeInsets.fromLTRB(14, 15, 13, 15),
                          height:  double.infinity,
                          decoration:  BoxDecoration (
                            color:  Color(0xffffc3a7),
                            borderRadius:  BorderRadius.circular(29),
                          ),
                          child:
                          Center(
                            child:
                            SizedBox(
                              width:  31,
                              height:  28,
                              child:
                              Image.asset("assets/star.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

