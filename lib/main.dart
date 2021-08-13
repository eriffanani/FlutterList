import 'package:flutter/material.dart';
import 'package:flutter_list/advance_list.dart';
import 'package:flutter_list/basic_list.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void openBasicList(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BasicList()));
  }

  void openAdvanceList(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AdvanceList()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Demo"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    openBasicList(context);
                  },
                  child: Text("Basic List")),
              //Advance Button
              ElevatedButton(
                onPressed: () {
                  openAdvanceList(context);
                },
                child: Text("Advance List"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
