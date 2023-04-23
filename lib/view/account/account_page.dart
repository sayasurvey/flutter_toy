import 'package:flutter/material.dart';

import '../../model/account.dart';
import '../../model/post.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        content:  '初めまして2回目',
        postAccountId: '1',
        createdTime: DateTime.now()
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea( //時刻や通知などの範囲にColumnがかからないようにする
          child: Column(
            children: [
              Container(
                  color: Colors.red.withOpacity(0.3),
                  height: 200,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, //アカウント情報と編集ボタンを両橋に寄せる
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                foregroundImage: NetworkImage(myAccount.imagePath),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                children: [
                                  Text(myAccount.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                  Text('@${myAccount.userId}', style: const TextStyle(color: Colors.grey),)
                                ],
                              )
                            ]
                          ),
                          OutlinedButton( //ボタンの作成
                            onPressed: (){ //タップ時の動作

                            },
                            child: const Text('編集'))
                        ],
                      )
                    ],
                  )
              ),
            ],
          ),
        )
    );
  }
}
