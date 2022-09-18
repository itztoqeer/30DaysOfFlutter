import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://scontent.fisb5-2.fna.fbcdn.net/v/t39.30808-6/283508875_1110627969795044_5536644092477663286_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFfbP3h7ktMcq9ZzqjyoV3sTyUNPDVMKqxPJQ08NUwqrEhLcSdQzVcaysHMoIRovIkhGuZ1xDpOR_zbi4_i1npd&_nc_ohc=nKvdANkspisAX_ZOVbg&tn=8TXKEL9yaxkBBgI6&_nc_ht=scontent.fisb5-2.fna&oh=00_AT8o_VcQ6wXbF_1qPcIv1lNRL_dPmLkwdO0aLCL9Hxy64w&oe=632BB6E1";

    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                accountName: Text("M Toqeer"),
                accountEmail: Text("mr.toqeer.009@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profiles",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
