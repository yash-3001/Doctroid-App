import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            color: Colors.green[300],
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                My1stView(txt: "Cardiac"),
                My1stView(txt: "Lungs"),
                My1stView(txt: "Brain"),
                My1stView(txt: "Dentist"),
                My1stView(txt: "dermatologist"),
                //more options can be added here
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  my1stView({String txt}) {}
}

// ignore: must_be_immutable
class My1stView extends StatelessWidget {
  final String txt;
  My1stView({this.txt});
  Color clr = Colors.grey[200];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("button pressed was $txt");
        clr = Colors.blue;
      }, //for map loc findings
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                ),
                color: clr,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: Offset(0, 2))
                ]),
            child: Center(child: Text(txt))),
      ),
    );
  }
}
