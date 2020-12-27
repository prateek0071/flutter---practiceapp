import 'package:flutter/material.dart';
import 'popup.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('practiceapp'),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){
            debugPrint('this app is working properly');
          },)
        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.replay_outlined),
      tooltip: "Search Here",
      ),
      resizeToAvoidBottomInset: false,
      body: MyBody(),

      drawer: Drawer( child: ListView(
        children: <Widget>[

          DrawerHeader(child: Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 20),
              Text('navigation drawer'),

            ],
          ),
          decoration: BoxDecoration(
            color: Colors.brown
          ),),
          ListTile(
            leading: Icon(Icons.alarm_add),
            trailing: Icon(Icons.security),
            title: Text('listtitile'),
            onTap: (){},
          ),
          ListTile(
            title: Text('this is second list tile'),
            onTap: (){},
            trailing: Icon(Icons.account_box),
            
          ),
          
        ],
      ),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('sign in',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 25
              ),),

              RaisedButton(onPressed: (){
                login_page(context);
              },
              padding: EdgeInsets.all(15),
              child: Text('alert box'),
              )
            ],
          ),
    );
  }
}

