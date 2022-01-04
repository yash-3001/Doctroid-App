import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class doctorsDashboardPage extends StatefulWidget {
  @override
  _doctorsDashboardPageState createState() => _doctorsDashboardPageState();
}

// ignore: camel_case_types
class _doctorsDashboardPageState extends State<doctorsDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10,
        automaticallyImplyLeading: false,
        title: Center(child: Text("Doctor's Dashboard")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Check Your",
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                          Text(
                            "Patients Details",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                                fontSize: 30),
                          ),
                          SizedBox(height: 20),
                          Image(
                              image: AssetImage(
                                  'assets/images/recordsHistory.png')),
                        ],
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 10,
                              offset: Offset(0, 8))
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image(
                                image: AssetImage(
                              "assets/images/prescription.png",
                            )),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Enter Patient prescriptions",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "Give your prescriptions Here..",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/HomePaged');
                  },
                )
              ],
            ),
            SizedBox(height: 5),
            Container(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.warning,
                      color: Colors.red,
                    ),
                    Text("Currently No data Present")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent, //curve color
        color: Colors.lightGreenAccent[700], //background color
        buttonBackgroundColor: Colors.green[600], //circle color
        height: 60,
        index: 0,

        items: <Widget>[
          Icon(Icons.home, size: 28, color: Colors.white),
          Icon(
            Icons.account_circle,
            size: 28,
            color: Colors.white,
          )
        ],

        onTap: (index) {
          setState(() {
            if (index == 0) {
              //home
            } else {
              Navigator.pushNamed(context, '/profile');
            }
          });
        },
      ),
    );
  }
}
