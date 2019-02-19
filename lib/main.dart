import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino ActionSheet"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
              child: Text("Show Sheet"),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => CupertinoActionSheet(
                      title: const Text('Choose Options'),
                      message: const Text('Your options are '),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          child: const Text('One'),
                          onPressed: () {
                            Navigator.pop(context, 'One');
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: const Text('Two'),
                          onPressed: () {
                            Navigator.pop(context, 'Two');

                          },
                        )
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        child: const Text('Cancel'),
                        isDefaultAction: true,
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                      )),
                );
              }),
        ),
      ),
    );
  }
}
