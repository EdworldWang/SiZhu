import 'Data.dart';

class AudioUrlResult {
    List<Data> data;
    int code;

    AudioUrlResult({this.data, this.code});

    factory AudioUrlResult.fromJson(Map<String, dynamic> json) {
        return AudioUrlResult(
            data: json['data'] != null ? (json['data'] as List).map((i) => Data.fromJson(i)).toList() : null,
            code: json['code'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        if (this.data != null) {
            data['data'] = this.data.map((v) => v.toJson()).toList();
        }
        return data;
    }
}