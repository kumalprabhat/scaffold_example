import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Activitys'),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('johndoe@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child:
                Text(
                  'J',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Inbox',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.email),
            ),
            ListTile(
              title: Text('Primary',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Socoal',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: Text('Settings',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.settings),
            ),
            ListTile(
              title: Text('Logout',
                style: TextStyle(
                    color: Colors.black54
                ),
              ),
              leading: new Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(8.0),
        /*decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(color: Colors.green,offset: new Offset(4.0, 4.0))
          ],
        ),*/
        color: Colors.green,
        height: 150,
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(0.1),
        child: Text("Hello! I am in the container widget decoration box!!",
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => setState((){
            _count++;
          }),
        tooltip: 'Counter',
        child: Icon(Icons.add),
      ),
    );
  }
}

