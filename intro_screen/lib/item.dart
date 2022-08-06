import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen/detail/populardeal.dart';
import 'package:intro_screen/detail/recipe.dart';
import 'package:intro_screen/models/categories.dart';
import 'package:intro_screen/profile/profile.dart';

class Item extends StatefulWidget {
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  // const Item({Key? key}) : super(key: key);

  final itemList = Category.CategoryList();
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isDarkModeEnabled ? Colors.black.withOpacity(.4) : Color(0xffE6F2FF),
      body: Container(
        padding: EdgeInsets.all(18),
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hand picked  fresh',
                          style: GoogleFonts.abrilFatface(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: isDarkModeEnabled
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w700)),
                        ),
                        Text(
                          'items only for you',
                          style: GoogleFonts.abrilFatface(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: isDarkModeEnabled
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isDarkModeEnabled = !isDarkModeEnabled;
                        });
                      },
                      child: Container(
                        alignment: isDarkModeEnabled
                            ? Alignment(1, 0)
                            : Alignment(-0.8, 0),
                        width: 70,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: isDarkModeEnabled
                                ? Color(0xff261051)
                                : Colors.transparent,
                            border: Border.all(
                              width: 6,
                              color: isDarkModeEnabled
                                  ? Color(0xff6E40C7)
                                  : Color(0xffD1D4D9),
                            )),
                        child: Icon(
                          isDarkModeEnabled
                              ? Icons.dark_mode
                              : Icons.light_mode,
                          size: 30,
                          color:
                              isDarkModeEnabled ? Colors.white : Colors.yellow,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 60,
              child: TextField(
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
                          color:
                              isDarkModeEnabled ? Colors.white : Colors.black,
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
              height: 8,
            ),
            Container(
              height: 140,
              decoration: BoxDecoration(
                  // color: Colors.teal,
                  ),
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 8,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return Container(
                        // alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: 300,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage('${itemList[index].img}'),
                              fit: BoxFit.fill),
                          //color: Colors.amber
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Online Grocery',
                                style: GoogleFonts.satisfy(
                                    textStyle: TextStyle(
                                        fontSize: 20, color: Colors.white))),
                            Text('Shopping',
                                style: GoogleFonts.satisfy(
                                    textStyle: TextStyle(
                                        fontSize: 20, color: Colors.white))),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(100, 25),
                                  primary: Color(0xffFDC230)),
                              child: Text('Shop Now'),
                            ),
                          ],
                        ));
                  }),
            ),
            SizedBox(
              height: 5,
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
                            color:
                                isDarkModeEnabled ? Colors.white : Colors.black,
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
            // SizedBox(
            //   height: 15,
            // ),
            Container(
              //color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              height: 200,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 38,
                children: List.generate(itemList.length, (index) {
                  return Stack(
                    // overflow: Overflow.visible,
                    clipBehavior: Clip.none,

                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Text(
                          '${itemList[index].name2}',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        right: 30,
                        top: -35,
                        child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('${itemList[index].img2}')),
                      )
                    ],
                  );
                }),
              ),
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      // onTap: () {
                      //   Navigator.of(context).push(MaterialPageRoute(
                      //       builder: (context) => ()));
                      // },
                      child: Column(
                        children: [Icon(Icons.home), Text("Home")],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Recipe()));
                      },
                      child: Column(
                        children: [Icon(Icons.restaurant), Text("Racipe")],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Column(
                        children: [Icon(Icons.person), Text("Profile")],
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(

      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.restaurant),
      //       label: 'Recipe',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   selectedItemColor: Color(0xff8BC24A),
      // ),
    );
  }
}
