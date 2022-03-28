import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class ApiCallController extends GetxController {
  var url;
  var response;

  void callAPI() async {
    // get
    url = Uri.parse(
      'https://jsonplaceholder.typicode.com/posts',
    );
    response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    // post
    // url = Uri.parse('https://reqbin.com/sample/post/json');
    // response = await http.post(url, body: {
    //   'key': 'value',
    // });
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
  }
}

Future<Post> fetchPost() async {
  final postUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  final response = await http.get(postUrl);

  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON 을 파싱합니다.
    return Post.fromJson(json.decode(response.body));
  } else {
    // 만약 요청이 실패하면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
