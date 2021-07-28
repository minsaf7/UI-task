import 'package:flutter/material.dart';

class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  _OthersState createState() => _OthersState();
}

class _OthersState extends State<Others> {
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
      child: Center(
        child: Text("No data"),
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
  cardData.bgColor = Colors.blue;
  cardData.btn = true;
  cardData.liked = false;
  data.add(cardData);
  cardData = CardData();

  //2
  cardData.title = "You'r doing well paying your off your loans";
  cardData.date = "09-06-2018";
  cardData.desc =
      "Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending?";
  cardData.bgColor = Colors.green;
  cardData.btn = false;
  cardData.liked = true;
  data.add(cardData);
  cardData = CardData();

  //3
  cardData.title = "You'r doing well paying your off your loans";
  cardData.date = "09-06-2018";
  cardData.desc =
      "Last month, you made 42 transactions less than \$5, spending a total of \$147. Want to cut down on frivilous spending?";
  cardData.bgColor = Colors.purple;
  cardData.btn = true;
  cardData.liked = false;
  data.add(cardData);
  cardData = CardData();

  return data;
}
