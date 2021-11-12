import 'package:flutter/material.dart';
import 'Semester_1.dart';
import 'Semester_3.dart';

class Semester_4 extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 60);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Semester 4'),
          centerTitle: true,
          backgroundColor: Colors.purple,
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
                        text: 'Computer Graphics & Multimedia Application',
                        icon: Icons.category,
                        //onClicked: () => selectedItem(context, 0),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Operating System',
                        icon: Icons.category,
                        // onClicked: () => selectedItem(context, 1),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Software Engineering',
                        icon: Icons.category,
                        //  onClicked: () => selectedItem(context, 2),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Optimization Techniques',
                        icon: Icons.category,
                        //   onClicked: () => selectedItem(context, 3),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Mathematics-III',
                        icon: Icons.category,
                        //   onClicked: () => selectedItem(context, 3),
                      ),
                      const SizedBox(height: 24),
                      Divider(color: Colors.white70),
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
