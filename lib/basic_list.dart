import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BasicList extends StatefulWidget {
  const BasicList({Key? key}) : super(key: key);

  @override
  _BasicListState createState() => _BasicListState();
}

class _BasicListState extends State<BasicList> {
  List<Widget> widgets = [];

  _BasicListState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Container(
        width: double.infinity,
        child: Card(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Data ke: " + i.toString(),
                  style: TextStyle(fontSize: 22),
                ))),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              SystemNavigator.pop();
            }
          }),
          title: Text("Basic List"),
        ),
        body: ListView(
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: widgets)
          ],
        ),
      ),
    );
  }
}
