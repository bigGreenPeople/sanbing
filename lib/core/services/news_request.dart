import '../model/news_model.dart';
import 'http_request.dart';

class FjNewsRequest {
  static Future<List<FjNewsModel>> getNewsData() async {
    // 1.发送网络请求
    String url = "/news";
    final result = await HttpRequest.request(url);

    // 2.json转modal
    final dataArray = result["data"];
    List<FjNewsModel> datas = [];
    for (var json in dataArray) {
      datas.add(FjNewsModel.fromJson(json));
    }
    return datas;
  }
}
