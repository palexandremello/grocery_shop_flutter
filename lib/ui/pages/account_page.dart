import 'package:flutter/material.dart';
import 'package:grocery_app/ui/shared/widgets/appbar_widget.dart';
import 'package:grocery_app/ui/shared/widgets/search_bar_widget.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Find Products',
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: SearchBarWidget(),
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Account Page'),
        ),
      ),
    );
  }
}
