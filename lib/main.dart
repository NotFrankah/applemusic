import 'package:flutter/material.dart';

void main() {
  runApp(const ListenNow());
}

class ListenNow extends StatefulWidget {
  const ListenNow({super.key});

  @override
  State<ListenNow> createState() => _ListenNowState();
}

class _ListenNowState extends State<ListenNow> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Flutter layout demo',
        theme: new ThemeData(scaffoldBackgroundColor: const Color(00000)),
        home: Scaffold(
          appBar: null,
            body:  SingleChildScrollView(
                child: Column(
                children: [topRow,
                  FrontPageBoxes(),
                  FrontPageBoxes(),
                ]
            ),),
    bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.play_circle),
    label: 'Listen Now',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.wifi),
    label: 'Radio',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.library_music),
    label: 'Library',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'Search',
      ),
    ],
    ),
    ),

        );
  }

  Widget topRow = Container(
      padding: const EdgeInsets.all(32),
      child: Row(

          children: [

            Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                    'Listen Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize:20)
                )
            ),
            Spacer(),
            Icon(Icons.person, color: Colors.red[500]),

          ]));}


class FrontPageBoxes extends StatelessWidget {
  const FrontPageBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: InkWell(
        borderRadius: BorderRadius.circular(25),
    child: Ink(
    height: MediaQuery.of(context).size.width * 1,
    width: MediaQuery.of(context).size.height * 0.8,
    color: Colors.grey,
    )));
  }
}
