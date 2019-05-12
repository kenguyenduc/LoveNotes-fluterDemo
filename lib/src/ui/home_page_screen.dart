
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final TextEditingController _controllerTitle = new TextEditingController();
  final TextEditingController _controllerContent = new TextEditingController();
  // Initialise outside the build method
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();

  int _selectedIndex = 0;
  String value = "";
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    var mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: const Color.fromRGBO(59, 59, 73, 1),
      appBar: AppBar(
        title:new Text('Writtings'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              new SizedBox(
                height: 200.0,
                width: mediaWidth,
                child: new TextField(
                  controller: _controllerTitle,
                  autofocus: true,
                  focusNode: nodeOne,
                  decoration:InputDecoration(
                    hintText: "Title...",
                  ),
                  onChanged: (text) {
                    value = text;
                  },
                ),
              ),
              new SizedBox(
                height: 200.0,
                width: mediaWidth,
                child: new TextField(
                  controller: _controllerContent,
                  focusNode: nodeTwo,
                  decoration:InputDecoration(
                    hintText: "Content...",
                  ),
                  onChanged: (text) {
                    value = text;
                  },
                ),
              ),
              _widgetOptions.elementAt(_selectedIndex),
            ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}

