import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class in Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RowNColumn (), debugShowCheckedModeBanner: false ,
    );
  }
}

class RowNColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("*"),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Nama saya Faiz Naufal Ramadhan"),
              new Text("   "),
              new Text("Nomor absen 02"),
              new Text("   "),
              new Text("Dari kelas XII RPL 3"),
              new Text("   "),

              new MaterialButton(

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewWidget() ));

                }, child: Text('Biodata'),
                color: Colors.black45,
                textColor: Colors.white,
              ),

              new MaterialButton(

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageGridView() ));

                }, child: Text('Page Two'),
                color: Colors.black38,
                textColor: Colors.white,
              ),
            ],
          ),
          new Text("*"),

        ],
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
          children: <Widget>[
            new ListTile(
              title: Text("Nama Lengkap : Faiz Naufal Ramadhan "),
              trailing: Icon(Icons.people),
            ),
            new ListTile(
              title: Text("Kelas : XII RPL 3 "),
              trailing: Icon(Icons.class_),
            ),
            new ListTile(
              title: Text("Nomor Absen : 02 "),
              trailing: Icon(Icons.format_list_numbered),
            ),
            new ListTile(
            ),
          ]
      ),
    );
  }
}


class PageGridView extends StatelessWidget {

  final List Bio = [
    "Nama", "Nomor", "Saya", "Saya", "Absen",
    "Siswa", "Faiz", "Saya", "Kelas", "Naufal",
    "adalah", "XII", "Ramadhan", "02", "RPL 3"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        children: <Widget>[
          GridView.count(
            crossAxisCount: 3,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(20),
            children: List.generate(Bio.length, (index) {
              return Container(
                height: 100,
                child: Card(
                  child: Center(
                      child: Text(Bio[index],
                          style: TextStyle(
                              color: Colors.white, fontSize: 20))),
                  color: Colors.deepPurpleAccent,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}