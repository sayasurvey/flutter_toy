import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea( //時刻や通知などの範囲にColumnがかからないようにする
          child: Column(
            children: [
              Container(
                  color: Colors.red,
                  height: 200
              ),
            ],
          ),
        )
    );
  }
}
