import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalSatu(),
    title: "Navigasi",
    routes: <String, WidgetBuilder> { //memindahkan halaman
      '/Halsatu' : (BuildContext context) => new HalSatu(), //membuka halaman satu
      '/Haldua' : (BuildContext context) => new Haldua(), //membuka halaman dua
    },
  ));
}

//halaman pertama
class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Halaman Satu"),),
      body: new Center(
            //menggunakan icon
        // child: new IconButton(
        //   icon: new Icon(Icons.headset, size: 50.0),
        //   onPressed: (){ //ketika diklik
        //     Navigator.pushNamed(context, '/Haldua'); //maka akan ke halaman kedua
        //   },
        // ),

            //end icon

            //menggunakan text dan icon
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(           //menambahkan button flat
              onPressed: () {
                Navigator.pushNamed(context, '/Haldua'); //redirect halaman dua
              },
              //menambahkan colors dan padding
              color: Colors.red,
              padding: EdgeInsets.all(10.0),
              //end colors dan padding

              //menambahkan icon dalam padding
              child: Column(
                children: <Widget>[
                  Icon(Icons.skip_next),
                  Text("Ini Halaman Satu")
                ],
              ),
            )
          ],
        ),

        //end text dan icon
      ),
    );
  }
}

//halaman kedua
class Haldua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Halaman Dua"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.add, size: 50.0,),
          onPressed: (){ //ketika diklik
            Navigator.pushNamed(context, '/HalSatu'); //maka akan ke halaman satu
          },
        ),
      ),
    );
  }
}