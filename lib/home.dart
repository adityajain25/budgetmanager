import 'package:flutter/material.dart';
import 'addIncome.dart';
import 'addExpense.dart';
import 'addTransaction.dart';
import 'addReport.dart';
class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple[900],
        elevation: 30,
        centerTitle: true,
        title: Text("Overview",),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
      body: Container(
        color: Colors.deepPurple[900],
           child:ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
       SizedBox(
    height: 200,
    ),
       Container(
         height: 70,
         width: 50,
         alignment: Alignment.centerLeft,
         decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
             stops: [0, 0],
             colors: [
               Color(0xFFC8E6C9),
               Color(0XFFA5D6A7),
             ],
           ),
           borderRadius: BorderRadius.all(
             Radius.circular(70),
           ),
         ),
         child: SizedBox.expand(
           child: FlatButton(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text("Add income",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.black,
                     fontSize: 20,
                   ),
                   textAlign: TextAlign.left,
                 )
               ],
             ),
             onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(
                 builder: (context) => AddIncome(),
                 ),
               );
             },
           ),
         ),
       ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 0],
                  colors: [
                    Color(0xFFBBDEFB),
                    Color(0XFF90CAF9),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Add expense",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),

                    ],
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddExpense(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 0],
                  colors: [
                    Color(0xFFE0E0E0),
                    Color(0XFFD6D6D6),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Transactions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Transaction(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 0],
                  colors: [
                    Color(0xFF00ACC1),
                    Color(0XFF80DEEA),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Reports",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),

                    ],
                  ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Report(),
                        ),
                    );
                  },
                ),
              ),
            )
    ],)));
}}


