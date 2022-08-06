import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen/verify_phone.dart';

class Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xff9FF6A5),
                  Color(0xffA1F3A7),
                  Color(0xffA4EEB1),
                  Color(0xffA6E9B4),
                  Color(0xffAAE2BD),
                  Color(0xffADDFC2),
                  Color(0xffB0DDC6),
                  Color(0xffB5D5D0),
                  Color(0xffB8D1D6),
                ])),
            child: Text(
              'SIGN IN',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1),
            ),
          ),
          Container(
            color: Color(0xffB8D1D6),
            child: Container(
              //height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to Login',
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFA5924)),
                      )),
                  Text('page.',
                      style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFA5924)),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Please write  to correct information',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(.7),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                      //height: 60,
                      ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffFD5821),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'EMAIL',
                      hintStyle: TextStyle(
                          color: Color(0xffFD5821).withOpacity(.7),
                          fontSize: 18),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        icon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffFD5821),
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'PASSWORD',
                        hintStyle: TextStyle(
                            color: Color(0xffFD5821).withOpacity(.7),
                            fontSize: 18),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(200, 60)),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.withOpacity(.7)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Route route = MaterialPageRoute(builder: (_) {
                            return VerifyPhone();
                          });
                          Navigator.of(context).push(route);
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xffE8443E),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
