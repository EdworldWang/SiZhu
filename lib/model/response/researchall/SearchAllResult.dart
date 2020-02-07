import 'Result.dart';

class SearchAllResult {
    int code;
    Result result;

    SearchAllResult({this.code, this.result});

    factory SearchAllResult.fromJson(Map<String, dynamic> json) {
        return SearchAllResult(
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