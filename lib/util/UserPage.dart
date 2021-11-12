import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;
  // final String urlImage;

  const UserPage({
    Key? key,
    required this.name,
    //required this.urlImage,
    String assettImage = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text('About App Developer'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/rvrox.jpg'),
            ),
            Text(
              'Rajat Verma',
              style: TextStyle(
                fontFamily: 'DanceScript',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Text(
            //   '_________________________________________',
            //   style: TextStyle(
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              height: 5.0,
              width: 150.0,
              child: Divider(
                color: Colors.white70,
              ),
            ),
            Text(
              ' life is a virtual mess we weave ',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20.0,
                color: Colors.white54,
                //  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
            ),
            Card(
                //padding: EdgeInsets.all(10.0),
                color: Colors.white54,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    '   rv5393982@gmail.com',
                  ),
                )),
            Card(
                //padding: EdgeInsets.all(10.0),
                color: Colors.white54,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      '   9118800246',
                    ))),
            SizedBox(
              width: 30,
              height: 50,
            ),
            Text(
              '          I HOPE THIS APP WILL \n HELP YOU WITH YOUR STUDIES.  ',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 20.0,
                color: Colors.white54,
                //  fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      );
}
