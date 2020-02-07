import 'DjRadioX.dart';

class DjRadio {
    List<DjRadioX> djRadios;
    bool more;
    String moreText;
    List<int> resourceIds;

    DjRadio({this.djRadios, this.more, this.moreText, this.resourceIds});

    factory DjRadio.fromJson(Map<String, dynamic> json) {
        return DjRadio(
            djRadios: json['djRadios'] != null ? (json['djRadios'] as List).map((i) => DjRadioX.fromJson(i)).toList() : null, 
            more: json['more'], 
            moreText: json['moreText'], 
            resourceIds: json['resourceIds'] != null ? new List<int>.from(json['resourceIds']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['more'] = this.more;
        data['moreText'] = this.moreText;
        if (this.djRadios != null) {
            data['djRadios'] = this.djRadios.map((v) => v.toJson()).toList();
        }
        if (this.resourceIds != null) {
            data['resourceIds'] = this.resourceIds;
        }
        return data;
    }
}