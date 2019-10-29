import "package:flutter/material.dart";
void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        title: Text('List'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: ()=>debugPrint("item searched"),),
          IconButton(icon: Icon(Icons.add_box),onPressed: ()=>debugPrint("Mmeber added"),),
          IconButton(icon: Icon(Icons.add_call),onPressed: ()=>debugPrint("Select member for call"),),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('LIST SETTING'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text("Active Member"),
              onTap: ()=>debugPrint("Active member selceted"),
            ),
            ListTile(
              title: Text('Lazy Member'),
              onTap: () => debugPrint("Lazy memeber selcted"),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,

    )

));
