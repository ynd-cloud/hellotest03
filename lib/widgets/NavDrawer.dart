import 'package:flutter/material.dart';
import 'package:hellotest03/screens/LayoutPage.dart';
import 'package:hellotest03/screens/MenuPage.dart';
import 'package:hellotest03/screens/SearchPage.dart';
import 'package:hellotest03/screens/SignupPage.dart';
import 'package:hellotest03/screens/StackPage.dart';
 
import '../main.dart';
 
class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}
 
class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
          //===================================================
          // 1) RETURN DRAWER WIDGET
          //===================================================     
    return Drawer(
          //===================================================
          // 2) DATA IN DRAWER IS CHILD: LISTVIEW()
          //===================================================       
      child: ListView(
        padding: EdgeInsets.zero,
        children:<Widget> [
          //===================================================
          // 3) FILL HEADER NAME
          //===================================================           
          DrawerHeader(
            child:Text("Main Menu"),
            decoration: BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.fill,
               image: AssetImage('assets/images/bg01.jpg')
              )
            ),
          ),
          //===================================================
          // 4) ADD LIST OF MENU
          //===================================================           
          ListTile(leading: Icon(Icons.copyright), title: Text('Main Menu'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()),)},),   
          ListTile(leading: Icon(Icons.dashboard), title: Text('Layout'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutPage()),)},),   
          ListTile(leading: Icon(Icons.date_range), title: Text('Stack'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => StackPage()),)},),  
          ListTile(leading: Icon(Icons.rotate_right), title: Text('Search Page'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(username: 'satit@gmail.com',)),)},),             
          ListTile(leading: Icon(Icons.verified_user), title: Text('Sign up'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()),)},),               
          ListTile(leading: Icon(Icons.exit_to_app), title: Text('Logout'),onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()),)},),     //my app = main page
        ],
 
      ),
    ); 
   } // WIDGET
} // CLASS