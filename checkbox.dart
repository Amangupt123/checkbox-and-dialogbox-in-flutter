import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String name1 = '';
  void retrack() {
    setState(() {});
  }

  String name2 = '';
  String name3 = '';
  String name4 = ''; //_selected
  var _selected = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter SimpleDialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _displayDialog(context, retrack);
              },
              child: const Text("Show Dialog"),
            ),
            Text("click this button"),
            Text(name1),
            Text(name2),
            Text(name3),
            Text(name4),
          ],
        ),
      ),
    ));
  }

  _displayDialog(BuildContext context, Function retra) async {
    bool? firsVal = false;
    bool? secondVal = false;
    bool? thirdVal = false;
    bool? forthVal = false;
    _selected = await showDialog(
      context: context,
      builder: (BuildContext context) {
        //bool isChecked = false;
        return StatefulBuilder(builder: (context, setState) {
          return SimpleDialog(
            title: const Text('Choose name'),
            children: [
              CheckboxListTile(
                title: const Text('Aman'),
                value: firsVal,
                onChanged: (bool? value) {
                  if (value == true) name1 = 'Aman';
                  retra();
                  setState(() {
                    firsVal = value;
                  });
                },
                secondary: const Icon(Icons.people),
              ),
              CheckboxListTile(
                title: const Text('Anmol'),
                value: secondVal,
                onChanged: (bool? value) {
                  if (value == true) name2 = 'Anmol';
                  retra();
                  
                  setState(() {
                    secondVal = value;
                  });
                },
                secondary: const Icon(Icons.people),
              ),
              CheckboxListTile(
                title: const Text('Ashutosh'),
                value: thirdVal,
                onChanged: (bool? value) {
                  if (value == true) name3 = 'Ashutosh';
                  retra();
                  setState(() {
                    thirdVal = value;
                  });
                },
                secondary: const Icon(Icons.people),
              ),
              CheckboxListTile(
                title: const Text('Ajit Sir'),
                value: forthVal,
                onChanged: (bool? value) {
                  if (value == true) name4 = 'Ajit sir';
                  retra();
                  setState(() {
                    forthVal = value;
                  });
                },
                secondary: const Icon(Icons.people),
              ),
            ],
            elevation: 10,
            //backgroundColor: Colors.green,
          );
          //  return val;
        });
      },
    );

    // if (_selected != null) {
    //   setState(() {
    //     selected = selected;
    //   });
    // }
    //Text(name)
    //print(name);
  }
}