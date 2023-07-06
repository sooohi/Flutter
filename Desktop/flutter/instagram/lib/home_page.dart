import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black), //카메라 아이콘
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black), //전송 아이콘
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/logo.png', //Image.asset('경로') 위젯 사용해 로컬 이미지 파일 불러오기
          height: 32,
        ),
        centerTitle: true, //가운데 정렬
        backgroundColor: Colors.white, //appbar 흰색
      ),
      body: Feed(), //homewpage 위젯의 body 부분 feed 라는 이름의 위젯으로 분리
    );
  }
}
