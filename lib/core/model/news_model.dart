class FjNewsModel {
  String? title;
  String? content;
  String? createTime;
  String? logo;
  List<String>? contentImgs;
  int? favorcate = 0;
  int? collection = 0;
  int? comment = 0;

  FjNewsModel({
    this.title,
    this.content,
    this.createTime,
    this.logo,
    this.contentImgs,
    this.collection,
    this.comment,
    this.favorcate,
  });

  factory FjNewsModel.fromJson(Map<String, dynamic> json) {
    List<String> imgs = json["contentImgs"] as List<String>;

    return FjNewsModel(
        title: json["title"],
        logo: json["logo"],
        collection: json["collection"],
        comment: json["comment"],
        favorcate: json["favorcate"],
        content: json["content"],
        createTime: json["createTime"],
        contentImgs: imgs);
  }
}
