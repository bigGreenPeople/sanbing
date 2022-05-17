import 'package:flutter/material.dart';

class FjImageDetailPage extends StatelessWidget {
  final String _imageURL;
  String tag;

  FjImageDetailPage(this._imageURL, {this.tag = "default", Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Hero(tag: _imageURL + tag, child: Image.asset(_imageURL))),
      ),
    );
  }
}
