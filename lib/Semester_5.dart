import 'package:flutter/material.dart';
import 'Semester_1.dart';
import 'Semester_3.dart';

class Semester_5 extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 60);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Semester 5'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: padding,
                  child: Column(
                    children: [
                      Divider(color: Colors.white),
                      const SizedBox(height: 12),
                      const SizedBox(height: 24),
                      buildMenuItem(
                        text: 'Introduction to D.B.M.S.',
                        icon: Icons.assistant,
                        //onClicked: () => selectedItem(context, 0),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Java Programming & Dynamic Web Page Design',
                        icon: Icons.assistant,
                        // onClicked: () => selectedItem(context, 1),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Computer Network',
                        icon: Icons.assistant,
                        //  onClicked: () => selectedItem(context, 2),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Numerical Methods',
                        icon: Icons.assistant,
                        //   onClicked: () => selectedItem(context, 3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  Widget buildHeader({
    // required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
    required String assetImage,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(assetImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
