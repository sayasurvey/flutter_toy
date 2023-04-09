import 'package:flutter/material.dart';

import '../../model/account.dart';
import '../../model/post.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({Key? key}) : super(key: key);

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  Account myAccount = Account(
    id: '1',
    name: 'Flutterラボ',
    selfIntroduction: 'こんばんわ',
    userId: 'flutter_labo',
    imagePath: 'https://assets.st-note.com/production/uploads/images/58075596/profile_7d12166cbb91dd3ff25bbed3898bdd76.png?width=2000&height=2000&fit=bounds&format=jpg&quality=85',
    createdTime: DateTime.now(),
    updatedTime: DateTime.now()
  )

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('タイムライン')),
    );
  }
}
