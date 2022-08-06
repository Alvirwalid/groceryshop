import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen/models/categories.dart';

class Popular_Deal extends StatelessWidget {
  // const Popular_Deal({Key? key}) : super(key: key);

  final itemList = Category.CategoryList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F2FF),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text('Popular Deals',
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  //prefixIcon:Icon(Icons.search),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for Anything',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  filled: true,
                  fillColor: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                //scrollDirection: Axis.vertical,
                itemCount: itemList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.8),

                itemBuilder: (context, index) {
                  return Container(
                    //margin: EdgeInsets.only(top: 10),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          //left: 0,
                          top: 35,
                          //right: 0,
                          child: Container(
                            width: 180,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          right: 30,
                          // top: -35,
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.,
                            children: [
                              CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('${itemList[index].img2}')),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '${itemList[index].name2}',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '${itemList[index].weight}',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              //Spacer(),
                              SizedBox(
                                height: 20,
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${itemList[index].price}',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    color: Color(0xffFE5722),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
