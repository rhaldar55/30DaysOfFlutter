import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/26204447?v=4";

    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                /*decoration: BoxDecoration(
                    color: Colors.pinkAccent
                  ),*/
                margin: EdgeInsets.zero,
                accountName: Text("RAMESHWAR"),
                accountEmail: Text("rhaldar@gmail.com"),
                //currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor: 1.2 , style: TextStyle(
                color: Colors.white
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("Pfofile", textScaleFactor: 1.2 , style: TextStyle(
                  color: Colors.white
              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Email me", textScaleFactor: 1.2 , style: TextStyle(
                  color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
