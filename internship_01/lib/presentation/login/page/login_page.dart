import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const nameRoute = '/login';
  LoginPage({super.key});

  final PageController _pageController = PageController();
  final int _currentPage = 0;
  final Dio _dio = Dio();
  Future fetchData() async {
    final response =
        await _dio.get('https://jsonplaceholder.typicode.com/todos/1');
    return response.data;
  }

  @override
  Widget build(BuildContext context) {
    fetchData();
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return Text(snapshot.data.toString());
            }
          },
        ),
      ),
      // body: Row(
      //   children: [
      //     CarouselImageWidget(
      //       pageController: _pageController,
      //       currentPage: _currentPage,
      //     ),
      //     const LoginWidget(),
      //   ],
      // ),
    );
  }
}
