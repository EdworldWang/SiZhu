

class SimQueryX {
    String alg;
    String keyword;

    SimQueryX({this.alg, this.keyword});

    factory SimQueryX.fromJson(Map<String, dynamic> json) {
        return SimQueryX(
            alg: json['alg'], 
            keyword: json['keyword'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['keyword'] = this.keyword;
        return data;
    }
}