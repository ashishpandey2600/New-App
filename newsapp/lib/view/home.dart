import 'package:flutter/material.dart';
import 'package:newsapp/Model/newArt.dart';
import 'package:newsapp/controller/fetchnew.dart';
import 'package:newsapp/view/widgets/newcontainer.dart';

class Home extends StatefulWidget {
  
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
  
}
class _HomeState extends State<Home> {

late NewsArt newsArt = NewsArt(
    imgUrl: '',
    newHead: '',
    newsDes: '',
    newsCnt: '',
    newsUrl: '',
  );
     getNews() async {
      newsArt = await FetchNews.fetchNews();
      setState(() {});
    }

    @override
    void initState() {
      getNews();
      super.initState();
    }
   
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,

          itemBuilder: (context, index) {
            getNews();
            return NewsContainer(
                imgUrl: newsArt.imgUrl,
                newHead: newsArt.newHead,
                newDes: newsArt.newsDes,
                newcnt:newsArt.newsCnt,
                newsUrl:newsArt.newsUrl);
          }),
    );
  }
}
