import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen/login_page.dart';

class HomePage extends StatefulWidget {
  final a;
  HomePage({this.a});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.asset(
                './images/10001.webp',
                width: 365,
              ),
            ),
            SizedBox(
                // height: 5,
                ),
            Text('Welcome to',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFA5924)),
                )),
            SizedBox(
                // height: 15,
                ),
            Text('Registration page.',
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFA5924)),
                )),
            SizedBox(
              height: 15,
            ),
            Text(
              'Please write  to correct information',
              style: GoogleFonts.satisfy(
                  textStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFD5821),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.blue, fontSize: 22),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffFD5821),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.blue, fontSize: 22),
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: Size(150, 60)),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Already have an Accounts?',
                  style: GoogleFonts.satisfy(
                      textStyle: TextStyle(fontSize: 18, color: Colors.blue)),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (_) {
                      return Login_page();
                    });
                    Navigator.of(context).push(route);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Color(0xffE8443E),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
