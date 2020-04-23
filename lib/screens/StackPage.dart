import 'package:flutter/material.dart';
import 'package:hellotest03/services/DogService.dart';
import 'package:hellotest03/api/ApiDogsDao.dart';

class StackPage extends StatefulWidget {
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text('Stack Page'),
      actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  //
                });
              },
            )
          ],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FutureBuilder(
                  future: DogService.randomDog(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      ApiDogsDao msg = snapshot.data;
                      print("snap = "+msg.message);
                      return Image.network(msg.message,width: 300,height: 200,);
                    } else {
                      return CircularProgressIndicator();
                    }
                  })
            ],
          ),
        )
    );
  }
}