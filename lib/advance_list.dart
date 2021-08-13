import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvanceList extends StatefulWidget {
  const AdvanceList({Key? key}) : super(key: key);

  @override
  _AdvanceListState createState() => _AdvanceListState();
}

class _AdvanceListState extends State<AdvanceList> {
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
      ),
    );
  }
}
