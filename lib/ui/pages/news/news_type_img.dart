import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FjNewsTitleImg extends StatefulWidget {
  const FjNewsTitleImg({Key? key}) : super(key: key);

  @override
  State<FjNewsTitleImg> createState() => _FjNewsTitleImgState();
}

class _FjNewsTitleImgState extends State<FjNewsTitleImg> {
  List<Map> imgList = [
    {"url": "http://img5.mtime.cn/mg/2021/08/24/141454.81651527_285X160X4.jpg"},
    {"url": "http://img5.mtime.cn/mg/2021/08/24/134535.67957178_285X160X4.jpg"},
    {"url": "http://img5.mtime.cn/mg/2021/08/24/112722.60735295_285X160X4.jpg"},
    {"url": "http://img5.mtime.cn/mg/2021/08/24/110937.63038065_285X160X4.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 218, 218, 218),
          borderRadius: BorderRadius.circular(10.0)),
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          //每次循环遍历时，将i赋值给index
          return Image.network(
            imgList[index]['url'],
            fit: BoxFit.fill,
          );
        },
        itemCount: imgList.length,
        autoplay: true,
        //指示器
        pagination:
            const SwiperPagination(builder: DotSwiperPaginationBuilder(
              activeColor: Colors.white,
              color: Color.fromARGB(80, 255, 255, 255)
            )),
      ),
    );
  }
}
