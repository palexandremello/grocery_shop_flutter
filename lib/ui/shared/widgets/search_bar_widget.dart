import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  SearchBarWidget({Key? key}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          prefixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
              }),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: 'Search Store',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontFamily: 'Roboto',
            fontSize: 14,
          ),
        ),
        onSubmitted: (String value) {
          print(value);
        },
      ),
    );
  }
}
