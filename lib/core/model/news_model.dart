class FjNewsModel {
  String? title;
  String? content;
  String? createTime;

  FjNewsModel({
    this.title,
    this.content,
    this.createTime,
  });

  factory FjNewsModel.fromJson(Map<String, dynamic> json) => FjNewsModel(
        title: json["title"],
        content: json["content"],
        createTime: json["createTime"],
      );
}
