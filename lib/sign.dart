import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tea_time/menu.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});
  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff9f6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(
                  color:  Color(0xffffd5c1),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                ),
              ),
              SizedBox(height: 26),
              Image.asset("assets/acc.png",width: 160,height: 160),
              SizedBox(height: 26),
              Text(
                'Sign in',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize:  40,
                  fontWeight:  FontWeight.bold,
                  color:  Color(0xff5e5757),
                ),
              ),
              Text(
                'Welcome back',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize:  20,
                  fontWeight:  FontWeight.bold,
                  color:  Color(0xff5e5757),
                ),
              ),
              SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffd9d9d9)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffd9d9d9)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: signIn,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24,vertical: 14),
                    width: 294,
                    height: 60,
                    decoration:  BoxDecoration (
                      color:  Color(0xffc62b43),
                      borderRadius:  BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in',
                          style:  TextStyle (
                            fontStyle: FontStyle.normal,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account ?',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize:  20,
                      fontWeight:  FontWeight.bold,
                      color:  Color(0xff8F8A8A),
                    ),
                  ),
                  Text(
                    ' Sign up now',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize:  20,
                      fontWeight:  FontWeight.bold,
                      color:  Color(0xffc62b43),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}