import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({Key? key}) : super(key: key);

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: null,
        body: SingleChildScrollView(
          child: Column(children: [
            RadioText,
          ]),
        ),
      ),
    );
  }

  Widget FreeMonth = Container(
  padding: const EdgeInsets.all(12),
  child: InkWell(
  customBorder: CircleBorder(),
  child: Ink(
  height: MediaQuery.of(context).size.width * 1,
  width: MediaQuery.of(context).size.height * 0.8,
  color: Colors.grey,
  )));
  }
  }
  )

  Widget RadioText = Container(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text('Radio',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20))),
        Spacer(),
        Icon(Icons.person, color: Colors.red[500]),
      ]));
}
