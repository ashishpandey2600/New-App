import 'package:flutter/material.dart';
import 'package:newsapp/controller/fetchnew.dart';
import 'package:newsapp/view/widgets/newcontainer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsContainer(
                imgUrl:
                    "https://images.unsplash.com/photo-1504711434969-e33886168f5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                newDes:
                    "5G services in India were formally launched by Prime Minister Shri Narendra Modi on 1st October 2022, at the 6th edition of India Mobile Congress (IMC).",
                newHead: "5G in India",
                newsUrl:
                    "https://www.indiatoday.in/technology/news/story/reliance-jio-5g-available-20-new-indian-cities-full-list-2337593-2023-02-21");
          }),
    );
  }
}
