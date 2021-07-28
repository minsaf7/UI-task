import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  List<CardData> cardList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cardList = getData();
    print(cardList);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: cardList.length,
        itemBuilder: (contect, index) {
          return Padding(
            padding: EdgeInsets.all(5),
            child: cardContainer(
                cardList[index].bgColor!,
                cardList[index].title!,
                cardList[index].date!,
                cardList[index].desc!,
                cardList[index].liked!,
                cardList[index].btn!),
          );
        },
        //  ),
      ),
    );
  }

  cardContainer(Color clr, String title, String date, String desc, bool isLiked,
      bool btn) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.24,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //icon
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              // alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width * 0.1,
              //color: Colors.black,
              child: Icon(Icons.verified_user),
            ),
          ),
//second row data
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Text(date,
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  desc,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

                //button
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    btn
                        ? Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Center(child: Text("SETUP GOAL")),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                    IconButton(
                        onPressed: () {},
                        icon: isLiked
                            ? Icon(
                                Icons.favorite,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardData {
  String? title;
  String? date;
  String? desc;
  Color? bgColor;
  bool? liked;
  bool? btn;
}

List<CardData> getData() {
  List<CardData> data = [];
  CardData cardData = CardData();

  //1
  cardData.title = "Small stuff adds up!";
  cardData.date = "09-06-2018";
  cardData.desc =
      "Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending? ";
  cardData.bgColor = Color(0xFF5185ff);
  cardData.btn = true;
  cardData.liked = false;
  data.add(cardData);
  cardData = CardData();

  //2
  cardData.title = "You'r doing well paying your off your loans";
  cardData.date = "09-06-2018";
  cardData.desc =
      "Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending?";
  cardData.bgColor = Color(0xFF4fd2c2);
  cardData.btn = false;
  cardData.liked = true;
  data.add(cardData);
  cardData = CardData();

  //3
  cardData.title = "You'r doing well paying your off your loans";
  cardData.date = "09-06-2018";
  cardData.desc =
      "Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending?";
  cardData.bgColor = Color(0xFF6164cf);
  cardData.btn = true;
  cardData.liked = false;
  data.add(cardData);
  cardData = CardData();

  //4
  cardData.title = "You'r doing well paying your off your loans";
  cardData.date = "09-06-2018";
  cardData.desc =
      "Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending?";
  cardData.bgColor = Color(0xFFff84ae);
  cardData.btn = true;
  cardData.liked = false;
  data.add(cardData);
  cardData = CardData();

  return data;
}
