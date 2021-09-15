import 'package:channabsheet/top_card.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopNewCard(),
          Expanded(child: Container(
            color: Colors.blue[100],
            child: Center(
              child: Text("Transactions"),
            ),
          )),
          Container(
            height: 25,
            child: Center(
              child: Text(
                "Button"
              ),
            ),
          )

        ],
      ),
    );
  }
}
