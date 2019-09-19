import 'package:drawer/newpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;


void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new HomePage(),

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        elevation: debugDefaultTargetPlatformOverride == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new prefix0.UserAccountsDrawerHeader(
                accountName: new Text("Zohan"),
                accountEmail: new Text("email@example"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("Z",style: new TextStyle(color: Colors.black,fontSize: 30)),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image:AssetImage('graphics/bg.jpeg'),
                )
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text("S",style: new TextStyle(color: Colors.black,fontSize: 30)),
                )
              ],

            ),

            new ListTile(
                title: new Text("Home"),
                leading: new Icon(Icons.home),
                onTap: ()=>Navigator.of(context).pop(),

            ),
            new Divider(),
            new ListTile(
              title: new Text("Events"),
              leading: new Icon(Icons.event),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new NewPage("Events")
                  ));
                }
            ),
            new Divider(),
            new ListTile(
                title: new Text("Speakers"),
                leading: new Icon(Icons.person),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new NewPage("Speakers")
                  ));
                }
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
