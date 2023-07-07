import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //화면에 보여줄 전체 이미지 목록 선언
    final List<String> images = [
      "https://cdn.pixabay.com/photo/2018/05/11/08/11/dog-3389729_1280.jpg",
      "https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_1280.jpg",
      "https://cdn.pixabay.com/photo/2019/08/07/14/11/dog-4390885_1280.jpg",
      "https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_1280.jpg",
      "https://cdn.pixabay.com/photo/2016/11/22/23/14/terrier-1851108_1280.jpg",
      "https://cdn.pixabay.com/photo/2020/11/08/10/25/dog-5723334_1280.jpg",
      "https://cdn.pixabay.com/photo/2022/12/19/06/31/australian-shepherd-7664795_1280.jpg",
    ];
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
      //body: Feed(), //homewpage 위젯의 body 부분 feed 라는 이름의 위젯으로 분리
      //Listview를 사용해 itemcount 만큼 피드 반복
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          //각각 이미지에 해당하는 index를 가져와 feed에 넘겨줌
          String image = images[index];
          return Feed(imageUrl: image);
        },
      ),
    );
  }
}
