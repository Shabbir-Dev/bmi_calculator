import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white70,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Gender",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 1.0, 8.0, 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "i'm ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 48.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Switch(
                          value: false,
                          onChanged: (value) {
                            setState(() {
                              print(value);
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                            child: Text("Age",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 16.0)),
                          ),
                          Text("28",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 38.0)),
                          Icon(Icons.arrow_drop_up,
                              color: Colors.blue, size: 34.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              MaterialButton(
                                height: 30,
                                minWidth: 30,
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Colors.blue,
                                child: Icon(
                                  Icons.remove,
                                  size: 24,
                                ),
                                padding: EdgeInsets.all(8),
                                shape: CircleBorder(),
                              ),
                              MaterialButton(
                                height: 30,
                                minWidth: 30,
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Colors.blue,
                                child: Icon(
                                  Icons.add,
                                  size: 24,
                                ),
                                padding: EdgeInsets.all(8),
                                shape: CircleBorder(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                            child: Text("Weight",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 16.0)),
                          ),
                          Text("57",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 38.0)),
                          Icon(Icons.arrow_drop_up,
                              color: Colors.blue, size: 34.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              MaterialButton(
                                height: 30,
                                minWidth: 30,
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Colors.blue,
                                child: Icon(
                                  Icons.remove,
                                  size: 24,
                                ),
                                padding: EdgeInsets.all(8),
                                shape: CircleBorder(),
                              ),
                              MaterialButton(
                                height: 30,
                                minWidth: 30,
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Colors.blue,
                                child: Icon(
                                  Icons.add,
                                  size: 24,
                                ),
                                padding: EdgeInsets.all(8),
                                shape: CircleBorder(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                      child: Text("Height",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 16.0)),
                    ),
                    Text("157",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 38.0)),
                    Icon(Icons.arrow_drop_up,
                        color: Colors.blue, size: 34.0),
                    Container(
                      child: HorizantalPicker(
                        minValue: 0,
                        maxValue: 300,
                        divisions: 3000,
                        initialPosition: InitialPosition.center,
                        showCursor: false,
                        backgroundColor: Colors.white,
                        activeItemTextColor: Colors.blue,
                        passiveItemsTextColor: Colors.grey,
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlatButton(onPressed: null, child: Text("Calculate"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
