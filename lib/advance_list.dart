import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvanceList extends StatefulWidget {
  const AdvanceList({Key? key}) : super(key: key);

  @override
  _AdvanceListState createState() => _AdvanceListState();
}

class _AdvanceListState extends State<AdvanceList> {
  
  List<Widget> widgets = [];

  void showSnackBar(String text) {
    var snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  _AdvanceListState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Container(
        width: double.infinity,
        child: Card(
          child: InkWell(
              onTap: () {
                showSnackBar("OK");
              },
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Data ke: " + i.toString(),
                    style: TextStyle(fontSize: 22),
                  ))),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Advance List"),
          leading: BackButton(onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              SystemNavigator.pop();
            }
          }),
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
