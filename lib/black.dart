import 'package:flutter/material.dart';
import 'package:tea_time/menu.dart';

class BlackPage extends StatefulWidget {
  const BlackPage({super.key});
  @override
  State<BlackPage> createState() => _BlackPageState();
}

class _BlackPageState extends State<BlackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [ BoxShadow(
                    color:  Color(0x3f000000),
                    offset:  Offset(0, 2),
                    blurRadius:  4,
                  )
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context,MaterialPageRoute(builder: (context) => const MenuPage()),);
                  },
                  style:  TextButton.styleFrom (
                    padding:  EdgeInsets.zero,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color:  Color(0xffc62b43),size: 35,),
                      Text(
                        'Menu',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize:  30,
                          fontWeight:  FontWeight.bold,
                          height:  1.2125,
                          color:  Color(0xffc62b43),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Image.asset("assets/Black.png"),
            Padding(
              padding: EdgeInsets.only(left: 36,top: 34,right: 0,bottom: 10),
              child: Text(
                'Black Tea',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize:  27,
                  fontWeight:  FontWeight.bold,
                  color:  Color(0xff5e5757),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 36,top: 10,right: 0,bottom: 18),
              child: Image.asset("assets/h.png",width: 100),
            ),
            Padding(
              padding: EdgeInsets.only(left: 36,top: 10,right: 36,bottom: 25),
              child: Text(
                'Black tea is a robust and \nfull-bodied tea with a \ndeep, earthy flavor.',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize:  25,
                  fontWeight:  FontWeight.bold,
                  color:  Color(0xff8f8a8a),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 36,top: 0,right: 16,bottom: 0),
              child: Container(
                child : Row(
                  children: [
                    Text(
                      'Size :',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize:  25,
                        fontWeight:  FontWeight.bold,
                        color:  Color(0xff7f7979),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.only(left: 16,top: 0,right: 16,bottom: 0),
                      width: 50,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [ BoxShadow(
                          color:  Color(0x3f000000),
                          offset:  Offset(0, 1),
                          blurRadius:  1.5,
                        )
                        ],
                      ),
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize:  23,
                          height: 1.5,
                          fontWeight:  FontWeight.w500,
                          color:  Color(0xff7f7979),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.only(left: 16,top: 0,right: 16,bottom: 0),
                      width: 50,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [ BoxShadow(
                          color:  Color(0x3f000000),
                          offset:  Offset(0, 1),
                          blurRadius:  1.5,
                        )
                        ],
                      ),
                      child: Text(
                        'M',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize:  23,
                          height: 1.5,
                          fontWeight:  FontWeight.w500,
                          color:  Color(0xff7f7979),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.only(left: 16,top: 0,right: 16,bottom: 0),
                      width: 50,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [ BoxShadow(
                          color:  Color(0x3f000000),
                          offset:  Offset(0, 1),
                          blurRadius:  1.5,
                        )
                        ],
                      ),
                      child: Text(
                        'L',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize:  23,
                          height: 1.5,
                          fontWeight:  FontWeight.w500,
                          color:  Color(0xff7f7979),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              width: double.infinity,
              height: 73,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [ BoxShadow(
                  color:  Color(0x3f000000),
                  offset:  Offset(0, 4),
                  blurRadius: 10,
                )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$ 5.5',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize:  28,
                      fontWeight:  FontWeight.w500,
                      height:  1.7,
                      color:  Color(0xffc62b43),
                    ),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(left: 13,top:9 ,right: 12,bottom: 9),
                      width: 190,
                      height: 50,
                      decoration:  BoxDecoration (
                        color:  Color(0xffc62b43),
                        borderRadius:  BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Add ti Cart',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}