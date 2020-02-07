class UserX {
    int accountStatus;
    String alg;
    bool anchor;
    int authStatus;
    int authenticationTypes;
    int authority;
    int avatarImgId;
    String avatarImgIdStr;
    String avatarImgId_str;
    String avatarUrl;
    int backgroundImgId;
    String backgroundImgIdStr;
    String backgroundUrl;
    int birthday;
    int city;
    bool defaultAvatar;
    String description;
    String detailDescription;
    int djStatus;
    Object expertTags;
    Object experts;
    bool followed;
    int gender;
    bool mutual;
    String nickname;
    int province;
    Object remarkName;
    String signature;
    int userId;
    int userType;
    int vipType;

    UserX({this.accountStatus, this.alg, this.anchor, this.authStatus, this.authenticationTypes, this.authority, this.avatarImgId, this.avatarImgIdStr, this.avatarImgId_str, this.avatarUrl, this.backgroundImgId, this.backgroundImgIdStr, this.backgroundUrl, this.birthday, this.city, this.defaultAvatar, this.description, this.detailDescription, this.djStatus, this.expertTags, this.experts, this.followed, this.gender, this.mutual, this.nickname, this.province, this.remarkName, this.signature, this.userId, this.userType, this.vipType});

    factory UserX.fromJson(Map<String, dynamic> json) {
        return UserX(
            accountStatus: json['accountStatus'], 
            alg: json['alg'], 
            anchor: json['anchor'], 
            authStatus: json['authStatus'], 
            authenticationTypes: json['authenticationTypes'], 
            authority: json['authority'], 
            avatarImgId: json['avatarImgId'], 
            avatarImgIdStr: json['avatarImgIdStr'], 
            avatarImgId_str: json['avatarImgId_str'], 
            avatarUrl: json['avatarUrl'], 
            backgroundImgId: json['backgroundImgId'], 
            backgroundImgIdStr: json['backgroundImgIdStr'], 
            backgroundUrl: json['backgroundUrl'], 
            birthday: json['birthday'], 
            city: json['city'], 
            defaultAvatar: json['defaultAvatar'], 
            description: json['description'], 
            detailDescription: json['detailDescription'], 
            djStatus: json['djStatus'], 
            //expertTags: json['expertTags'] != null ? Object.fromJson(json['expertTags']) : null,
            //experts: json['experts'] != null ? Object.fromJson(json['experts']) : null,
            followed: json['followed'], 
            gender: json['gender'], 
            mutual: json['mutual'], 
            nickname: json['nickname'], 
            province: json['province'], 
            //remarkName: json['remarkName'] != null ? Object.fromJson(json['remarkName']) : null,
            signature: json['signature'], 
            userId: json['userId'], 
            userType: json['userType'], 
            vipType: json['vipType'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountStatus'] = this.accountStatus;
        data['alg'] = this.alg;
        data['anchor'] = this.anchor;
        data['authStatus'] = this.authStatus;
        data['authenticationTypes'] = this.authenticationTypes;
        data['authority'] = this.authority;
        data['avatarImgId'] = this.avatarImgId;
        data['avatarImgIdStr'] = this.avatarImgIdStr;
        data['avatarImgId_str'] = this.avatarImgId_str;
        data['avatarUrl'] = this.avatarUrl;
        data['backgroundImgId'] = this.backgroundImgId;
        data['backgroundImgIdStr'] = this.backgroundImgIdStr;
        data['backgroundUrl'] = this.backgroundUrl;
        data['birthday'] = this.birthday;
        data['city'] = this.city;
        data['defaultAvatar'] = this.defaultAvatar;
        data['description'] = this.description;
        data['detailDescription'] = this.detailDescription;
        data['djStatus'] = this.djStatus;
        data['followed'] = this.followed;
        data['gender'] = this.gender;
        data['mutual'] = this.mutual;
        data['nickname'] = this.nickname;
        data['province'] = this.province;
        data['signature'] = this.signature;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        if (this.expertTags != null) {
            //data['expertTags'] = this.expertTags.toJson();
        }
        if (this.experts != null) {
            //data['experts'] = this.experts.toJson();
        }
        if (this.remarkName != null) {
           //data['remarkName'] = this.remarkName.toJson();
        }
        return data;
    }
}