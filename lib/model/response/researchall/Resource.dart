import 'MlogBaseData.dart';
import 'MlogExtVO.dart';
import 'UserProfile.dart';

class Resource {
    MlogBaseData mlogBaseData;
    MlogExtVO mlogExtVO;
    String shareUrl;
    int status;
    UserProfile userProfile;

    Resource({this.mlogBaseData, this.mlogExtVO, this.shareUrl, this.status, this.userProfile});

    factory Resource.fromJson(Map<String, dynamic> json) {
        return Resource(
            mlogBaseData: json['mlogBaseData'] != null ? MlogBaseData.fromJson(json['mlogBaseData']) : null, 
            mlogExtVO: json['mlogExtVO'] != null ? MlogExtVO.fromJson(json['mlogExtVO']) : null, 
            shareUrl: json['shareUrl'], 
            status: json['status'], 
            userProfile: json['userProfile'] != null ? UserProfile.fromJson(json['userProfile']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['shareUrl'] = this.shareUrl;
        data['status'] = this.status;
        if (this.mlogBaseData != null) {
            data['mlogBaseData'] = this.mlogBaseData.toJson();
        }
        if (this.mlogExtVO != null) {
            data['mlogExtVO'] = this.mlogExtVO.toJson();
        }
        if (this.userProfile != null) {
            data['userProfile'] = this.userProfile.toJson();
        }
        return data;
    }
}