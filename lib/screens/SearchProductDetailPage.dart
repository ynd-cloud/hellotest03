//========================================================================================
// 1) IMPORT
//========================================================================================
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
 
//========================================================================================
// 2) ITEM PAGE
//========================================================================================
class SearchProductDetailPage extends StatefulWidget {
  //========================================================================================
  // DECLARE VAIRABLE (PRODUCTION NAME, PRODUCTION DESCRIPTION) ??? WIDGET.pdname
  //========================================================================================
  final String productid;
  SearchProductDetailPage({Key key, @required this.productid})
      : super(key: key);
 
  @override
  _SearchProductDetailPage createState() => _SearchProductDetailPage();
}
 
//========================================================================================
// 3) SHOW DATA
//========================================================================================
class _SearchProductDetailPage extends State<SearchProductDetailPage> {
  String name = "Please wait...";
  String description;
  String remark;
  String price;
 
//========================================================================================
// 4) GET DATA FROM DB ?? YES
//========================================================================================
  @override
  void initState() {
    super.initState();
    Firestore.instance
        .collection("product")
        .document(widget.productid) 
        .get()
        .then((value) {
      setState(() {
        name = value.data["name"];
        description = value.data["description"];
        remark = value.data["remark"];
        price = value.data["price"];
      });
    });
  }
//========================================================================================
// 4) GEN UI
//========================================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//========================================================================================
// 5) APP BAR
//========================================================================================      
      appBar: AppBar(
        title: Text(widget.productid),
        backgroundColor: Colors.blue,
      ),
//========================================================================================
// 6) BODY
//========================================================================================      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//========================================================================================
// 7) SHOW TEXT (PRODUCT NAME)
//========================================================================================            
            Text(
 //========================================================================================
// 8) SHOW WIDGET.PRNAME
//========================================================================================                
              widget.productid??'',      //??? WHERE FROM
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
            ),
            Text( name??'', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text( description??'', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),   
            Text( remark??'', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text( price??'', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),                      
          ],
        ),
      ),
    );
  }
}