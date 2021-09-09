import 'package:flutter/material.dart';

class AddItemCartWidget extends StatefulWidget {
  AddItemCartWidget({Key? key}) : super(key: key);

  @override
  _AddItemCartWidgetState createState() => _AddItemCartWidgetState();
}

class _AddItemCartWidgetState extends State<AddItemCartWidget> {
  int itemCart = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  itemCart -= 1;
                });
              }),
          Container(
            width: 45.67,
            height: 45.67,
            child: Center(
              child: Text(
                "$itemCart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(17)),
          ),
          IconButton(
              icon: Icon(
                Icons.add,
                color: Color.fromRGBO(83, 177, 117, 1),
              ),
              onPressed: () {
                setState(() {
                  itemCart += 1;
                });
              }),
        ],
      ),
    );
  }
}
