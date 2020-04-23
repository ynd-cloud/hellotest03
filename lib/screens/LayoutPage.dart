import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Page'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('1=======>'),
                Text('2=======>'),
                Text('3=======>'),
                Text('4=======>'),
                Text('5=======>'),
                RaisedButton(onPressed: (){},child: Text('Test'),),
                TextFormField(decoration: InputDecoration(labelText: 'company',prefixIcon: Icon(Icons.home)),),
                TextFormField(decoration: InputDecoration(labelText: 'name',prefixIcon: Icon(Icons.accessible)),),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 50,
                  color: Colors.red,
                )),
                Expanded(
                    child: Container(
                  height: 50,
                  color: Colors.green,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
