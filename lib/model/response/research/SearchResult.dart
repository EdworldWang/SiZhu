import 'Result.dart';

class SearchResult {
    int code;
    Result result;

    SearchResult({this.code, this.result});

    factory SearchResult.fromJson(Map<String, dynamic> json) {
        return SearchResult(
            code: json['code'], 
            result: json['result'] != null ? Result.fromJson(json['result']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        if (this.result != null) {
            data['result'] = this.result.toJson();
        }
        return data;
    }
}