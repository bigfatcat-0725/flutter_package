import 'package:flutter/material.dart';
import 'package:flutter_package/api_call_controller.dart';

// json, api 다루기는 더 연습

class HttpPackage extends StatefulWidget {
  HttpPackage({Key? key}) : super(key: key);

  @override
  State<HttpPackage> createState() => _HttpPackageState();
}

class _HttpPackageState extends State<HttpPackage> {
  late Future<Post> post;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi'),
              FutureBuilder<Post>(
                future: post,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!.title);
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  // 기본적으로 로딩 Spinner 를 보여줍니다.
                  return CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// final url = Uri.parse('https://reqbin.com/sample/post/json');
// final response = await http.post(url, body: {
// 'key': 'value',
// });
//
// print('Response status: ${response.statusCode}');
// print('Response body: ${response.body}');

// final url = Uri.parse(
//   'https://raw.githubusercontent.com/dev-yakuza/users/master/api.json',
// );
// final response = await http.get(url);
//
// print('Response status: ${response.statusCode}');
// print('Response body: ${response.body}');
