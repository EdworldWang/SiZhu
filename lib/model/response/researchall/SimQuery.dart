import 'SimQueryX.dart';

class SimQuery {
    bool more;
    List<SimQueryX> sim_querys;

    SimQuery({this.more, this.sim_querys});

    factory SimQuery.fromJson(Map<String, dynamic> json) {
        return SimQuery(
            more: json['more'], 
            sim_querys: json['sim_querys'] != null ? (json['sim_querys'] as List).map((i) => SimQueryX.fromJson(i)).toList() : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        if (this.sim_querys != null) {
            data['sim_querys'] = this.sim_querys.map((v) => v.toJson()).toList();
        }
        return data;
    }
}