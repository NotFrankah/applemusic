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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 5,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            FreeMonth(),
            radioText,
            musicText,
            RadioPageBoxes(),
            musicHitsText,
            RadioPageBoxes(),
            musicCountryText,
            RadioPageBoxes(),
            broadcastRadioText,
          ]),
        ),
      ),
    );
  }
}

Widget radioText = Container(
    padding: const EdgeInsets.all(16),
    child: Row(children: [
      Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: const Text('Radio',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 26))),
    ]));

class FreeMonth extends StatefulWidget {
  const FreeMonth({Key? key}) : super(key: key);

  @override
  State<FreeMonth> createState() => _FreeMonthState();
}

class _FreeMonthState extends State<FreeMonth> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: InkWell(
            customBorder: CircleBorder(),
            child: Ink(
              height: MediaQuery.of(context).size.width * 0.1,
              width: MediaQuery.of(context).size.height * 1,
              color: Colors.grey,
            )));
  }
}

Widget musicText = Container(
  padding: const EdgeInsets.all(30),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Music 1',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            Text(
              'The new music that matters.',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(Icons.calendar_month, color: Colors.red[500]),
    ],
  ),
);

class RadioPageBoxes extends StatefulWidget {
  const RadioPageBoxes({Key? key}) : super(key: key);

  @override
  State<RadioPageBoxes> createState() => _RadioPageBoxesState();
}

class _RadioPageBoxesState extends State<RadioPageBoxes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
        child: InkWell(
            customBorder: CircleBorder(),
            child: Ink(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.grey,
            )));
  }
}

Widget musicHitsText = Container(
  padding: const EdgeInsets.all(30),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Music Hits',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            Text(
              'Songs you know and love.',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(Icons.calendar_month, color: Colors.red[500]),
    ],
  ),
);

Widget musicCountryText = Container(
  padding: const EdgeInsets.all(30),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Music Country',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
            Text(
              'Where it sounds like home.',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(Icons.calendar_month, color: Colors.red[500]),
    ],
  ),
);

Widget broadcastRadioText = Container(
  padding: const EdgeInsets.all(30),
  child: Row(
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: const Text(
          'Listen Now',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
      Icon(Icons.navigate_next_rounded, color: Colors.grey[500]),
    ],
  ),
);
