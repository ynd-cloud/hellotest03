import 'package:flutter/material.dart';
 
class CardMenu extends StatefulWidget {
  @override
  _CardMenuState createState() => _CardMenuState();
}
 
class _CardMenuState extends State<CardMenu> {
  @override
    Widget build(BuildContext context) {
//===========================================================
// RETURN CONTAINER AND PUT IN SCAFFOLD IN MENU PAGE
//===========================================================      
    return Container(
     padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Layout Page", Icons.alarm),      
            makeDashboardItem("Menu Page", Icons.calendar_today),
            makeDashboardItem("Search Page", Icons.report),
            makeDashboardItem("Signup Page", Icons.supervised_user_circle),
            makeDashboardItem("Setup Profile", Icons.person),
            makeDashboardItem("Register Form", Icons.bookmark),
            makeDashboardItem("Register Company", Icons.home),     
            makeDashboardItem("Sign-off", Icons.access_time),                          
          ],
        ), 
    );
  }
}
 
//===========================================================
// 5) FUNCTION TO MAKE DASHBOARD
//===========================================================
  Card makeDashboardItem(String title, IconData icon) {
    //=======================================================
    // 1) RETURN CARD
    //=======================================================    
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        //===================================================
        // 2) CHILD: CONTAINER
        //===================================================
        child: Container(
        //=======================================================
        // 3) SIZE
        //=======================================================             
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: new InkWell(
            onTap: () {},
            child: Column(
            //=======================================================
            //4) MENU (ICON AND TEXT)
            //=======================================================                 
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                //=======================================================
                // 5) ICON
                //=======================================================                 
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                //=======================================================
                // 5) TEXT
                //=======================================================                   
                new Center(
                  child: new Text(title,
                      style:
                          new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }