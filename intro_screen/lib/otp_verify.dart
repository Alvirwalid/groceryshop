import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen/splash.dart';

class OTP_Verify extends StatelessWidget {
  const OTP_Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFCB),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                child: Image.asset('./images/otp.jpg')),
            SizedBox(
              height: 50,
            ),
            Text(
              'OTP VERIFICATION',
              style: GoogleFonts.josefinSans(
                  textStyle:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Please Enter OTP',
              style: TextStyle(fontSize: 20, color: Color(0xff9D9D77)),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your OTP',
                hintStyle: TextStyle(
                    color: Color(0xff9D9D77), fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (_) {
                  return Splash();
                });
                Navigator.of(context).push(route);
              },
              child: const Text(
                'Verify',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
