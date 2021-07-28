import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text1 =
      "The Nixon C39 series features a stainless steel 39mm case with fixed bezel, white dial and a scratch resistant mineral crystal. Sub dials: one 60 second. The 18mm leather band is fitted with a buckle clasp. This beautiful wrist watch, ";
  String text2 = "Two year WatchCenter warrenty and keep the recipt";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Row(
          children: [
            //back arrow
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              //  color: Colors.brown,
              child: Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Container(
                  // color: Colors.red,
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              // color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    // height: 200,
                    child: Stack(
                      children: [
                        //image stack
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: height * 0.30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            child: Image.network(
                              "https://ae01.alicdn.com/kf/Hcbc3d1ed3f994a339536d3b3c1e873act/2020-Fashion-Mens-Watches-Business-Top-Brand-Luxury-Leather-Quartz-Watch-Analog-Quartz-Sport-Watch-Brand.jpg_Q90.jpg_.webp",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.30,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 35),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Nixon",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Men's C39 leather whilte dial",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  //price and specs container
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$165.98",
                              style: TextStyle(
                                color: Color(0xFFb37358),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Icon(
                            //   Icons.refresh,
                            //   color: Color(0xFFb37358),
                            //   size: 35,
                            // )
                            Container(
                              child: Image.asset(
                                "assets/ic2.png",
                                color: Color(0xFFb37358),
                              ),
                            )
                          ],
                        ),

                        SizedBox(height: height * 0.03),
                        info("Brand Type", "Strap"),

                        Divider(
                          height: height * 0.03,
                          thickness: 3,
                        ),
                        info("Brand Width", "18 mm"),

                        Divider(
                          height: height * 0.03,
                          thickness: 3,
                        ),
                        info("Bazel Material", "Stainless Steel"),

                        Divider(
                          height: height * 0.03,
                          thickness: 3,
                        ),

//details
                        SizedBox(height: height * 0.02),
                        Container(
                          child: Text(
                            text1,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.grey, height: 1.2, fontSize: 15),
                          ),
                        ),

                        //warrenty text
                        SizedBox(height: height * 0.02),
                        Container(
                          child: Text(
                            text2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
                  SizedBox(height: height * 0.05),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: height * 0.09,
                      // width: 200,
                      decoration: BoxDecoration(
                          color: Color(0xFFb37358),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ADD TO BAG ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                letterSpacing: 3),
                          ),
                          Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget info(String txt1, String txt2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt1,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
              color: Colors.grey[700]),
        ),
        Text(
          txt2,
          style: TextStyle(color: Colors.grey[600]),
        )
      ],
    );
  }
}
