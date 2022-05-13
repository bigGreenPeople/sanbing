import 'package:flutter/material.dart';
///文本搜索框
class SearchTextFieldWidget extends StatelessWidget {
  //提交回调
  final ValueChanged<String>? onSubmitted;
  //点击回调
  final VoidCallback? onTab;
  //显示文本
  final String? hintText;
  final EdgeInsetsGeometry? margin;
  
  const SearchTextFieldWidget({Key? key, this.hintText, this.onSubmitted, this.onTab, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0.0),
      width: MediaQuery.of(context).size.width,
      alignment: AlignmentDirectional.center,
      height: 37.0,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 218, 218, 218),
          borderRadius: BorderRadius.circular(5.0)),
      child: TextField(
        onSubmitted: onSubmitted,
        onTap: onTab,
        cursorColor: const Color.fromARGB(255, 0, 189, 96),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 2.0),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 84, 86, 101)),
            prefixIcon: const Icon(
              Icons.search,
              size: 25,
              color: Color.fromARGB(255, 84, 86, 101),
            )),
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}
