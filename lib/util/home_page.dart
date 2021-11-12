import "package:flutter/material.dart";
import "main_drawer.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("B.C.A. Notes"),
        backgroundColor: Colors.white12,
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Image.asset("images/welcome2.jpg"),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Top to nhi... par haan...' +
                  '\n' +
                  ' achhe numbero se pass ho jaoge',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'abb jaldi se screen ke top left' + '\n' + 'drawer pe click krdo',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ),
      drawer: MainDrawer(),
    );
  }
}
