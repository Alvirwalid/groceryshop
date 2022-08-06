import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen/detail/populardeal.dart';
import 'package:intro_screen/models/categories.dart';

class Recipe extends StatelessWidget {
  //const Recipe({Key? key}) : super(key: key);

  final itemList = Category.CategoryList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F2FF),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'choose your one',
              style: GoogleFonts.abrilFatface(
                  textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700)),
            ),
            Text(
              'from 1000+ Recipes!',
              style: GoogleFonts.abrilFatface(
                  textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700)),
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for Anything',
                  hintStyle: TextStyle(
                      fontSize: 18, color: Colors.grey.withOpacity(.7)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.dancingScript(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Color(0xffFE5722)),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                  //color: Colors.teal,
                  ),
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 9,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return Container(
                        alignment: Alignment.bottomCenter,
                        width: 130,
                        // height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('${itemList[index].img}'),
                              fit: BoxFit.fill),
                          //color: Colors.amber
                        ),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              color: Color(0xffFE5722)),
                          alignment: Alignment.center,
                          child: Text(
                            '${itemList[index].name}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ));
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (_) {
                      return Popular_Deal();
                    });
                    Navigator.of(context).push(route);
                  },
                  child: Text(
                    'Popular Deals',
                    style: GoogleFonts.dancingScript(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Color(0xffFE5722)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
