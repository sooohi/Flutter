import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'login page', //appbar text
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true, //가운데 정렬
        ),
        body: SingleChildScrollView(
          //화면의 크기보다 위젯이 더 큰 경우 발생하는 에러 방지
          child: Padding(
            padding: const EdgeInsets.all(16.0), //여백주기
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://as2.ftcdn.net/v2/jpg/02/88/56/71/1000_F_288567114_LCa3MSApEtIMWj8PRTieYGYvJAKZKKuV.jpg",
                    width: 300,
                  ),
                ),
                TextField(
                  //텍스트 입력란
                  decoration: InputDecoration(
                      labelText: '이메일'), //textfield에 이메일 입력하도록 이메일 label 생성
                ),
                TextField(
                  obscureText: true, //비밀번호 안보이게 설정
                  decoration: InputDecoration(labelText: '비밀번호'),
                ),
                Container(
                  width: double.infinity, //무한대로 커지기
                  margin: const EdgeInsets.only(top: 16), //비밀번호와 로그인 사이 여백
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('로그인'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
