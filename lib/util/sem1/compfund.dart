import 'package:flutter/material.dart';

class compfund extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 60);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Computer Fundamental & Office Automation'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
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
                        text: 'pulk',
                        icon: Icons.filter_vintage,
                        //onClicked: () =>
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Programming Principle & Algorithm',
                        icon: Icons.filter_vintage,
                        // onClicked: () => selectedItem(context, 1),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Principles of Management',
                        icon: Icons.filter_vintage,
                        //  onClicked: () => selectedItem(context, 2),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Business Communication',
                        icon: Icons.filter_vintage,
                        //   onClicked: () => selectedItem(context, 3),
                      ),
                      const SizedBox(height: 16),
                      buildMenuItem(
                        text: 'Mathematics-I',
                        icon: Icons.filter_vintage,
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
  // void selectedItem(BuildContext context, int index) {
  //   Navigator.of(context).pop();
  //
  //   switch (index) {
  //     case 0:
  //       Navigator.of(context).push(MaterialPageRoute(
  //      /  builder: (context) => Semester_1(),
  //       ));
  //       break;
  // case 1:
  //   Navigator.of(context).push(MaterialPageRoute(
  //  //   builder: (context) => Semester_2(),
  //   ));
  //   break;
  // case 2:
  //   Navigator.of(context).push(MaterialPageRoute(
  // //    builder: (context) => Semester_3(),
  //   ));
  //   break;
  // case 3:
  //   Navigator.of(context).push(MaterialPageRoute(
  //  //   builder: (context) => Semester_4(),
  //   ));
  //   break;
  // case 4:
  //   Navigator.of(context).push(MaterialPageRoute(
  //   //  builder: (context) => Semester_5(),
  //   ));
  //   break;
}
