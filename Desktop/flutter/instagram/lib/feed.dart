import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//좋아요 여부에 따라 화면 생신하기 위해 statefulwidget으로 변경
class Feed extends StatefulWidget {
  //extreact widget으로 해당 위젯을 별도의 statelesswidget
  const Feed({
    super.key,
  });

  @override
  State<Feed> createState() => _FeedState();
}

// 좋아요 여부를 나타내는 상태 변수
bool isFavorite = false;

//statefulwidget으로 바꾼 후 상태를 관리하는 _Feedstate 클래스가 추가됨
class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //원래 column의 crossAxisAlignment의 기본 값이 center여서 이것을 추가해 내용 좌측 정렬
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 이미지
        Image.network(
          "https://cdn.pixabay.com/photo/2018/05/11/08/11/dog-3389729_1280.jpg",
          height: 400,
          width: double.infinity, // 폭 가득 채움
          fit: BoxFit.cover, //이미지 비율 유지하면서 고정된 폭과 높이에 맞추어 이미지 제공
        ),

        // 아이콘 목록
        Row(
          children: [
            IconButton(
              onPressed: () {
                // 클릭시 isfavorite 변수 값이 반전되면서 화면 갱신
                setState(() {
                  //화면 갱신
                  isFavorite = !isFavorite; // 좋아요 토글(클릭시 상태 변경)
                });
              },
              icon: Icon(
                CupertinoIcons.heart,
                color: isFavorite
                    ? Colors.pink
                    : Colors.black, //isFavorite이 true면 핑크 아님 검정
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.chat_bubble,
                color: Colors.black,
              ),
            ),
            Spacer(), // 빈 공간 차지
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bookmark,
                color: Colors.black,
              ),
            ),
          ],
        ),

        // 좋아요
        //화면과 텍스트 사이 간격 주기 위해 padding 위젯으로 text 감쌈
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "1,278 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "우리 귀여운 시바는 항상 해맑아ㅎㅎ",
          ),
        ),

        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "FEBURARY 6",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
