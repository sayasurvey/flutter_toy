import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  );

  List<Post> postList = [
    Post(
      id: '1',
      content:  '初めまして',
      postAccountId: '1',
      createdTime: DateTime.now()
    ),
    Post(
      id: '2',
      content:  '初めまして',
      postAccountId: '1',
      createdTime: DateTime.now()
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('タイムライン', style: TextStyle(color: Colors.black),),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, index){
          return Row(
            children: [
              CircleAvatar(
                radius: 22,
                foregroundImage: NetworkImage(myAccount.imagePath),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(myAccount.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                              Text('@${myAccount.userId}', style: const TextStyle(color: Colors.grey),),
                            ],
                          ),
                          //ここのindexはitemBuilder: (context, index)のindex ここには何件目のデータかが入る
                          Text(DateFormat('M/d/yy').format(postList[index].createdTime!))//!はnullは絶対ないという意味
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
