import 'Dj.dart';

class DjRadioX {
    String alg;
    bool buyed;
    String category;
    int categoryId;
    int commentCount;
    bool composeVideo;
    int createTime;
    String desc;
    Object discountPrice;
    Dj dj;
    int feeScope;
    bool finished;
    int id;
    int lastProgramCreateTime;
    int lastProgramId;
    String lastProgramName;
    int likedCount;
    String name;
    int originalPrice;
    int picId;
    String picUrl;
    int price;
    int programCount;
    int purchaseCount;
    int radioFeeType;
    String rcmdText;
    String rcmdtext;
    int shareCount;
    int subCount;
    bool underShelf;
    Object videos;

    DjRadioX({this.alg, this.buyed, this.category, this.categoryId, this.commentCount, this.composeVideo, this.createTime, this.desc, this.discountPrice, this.dj, this.feeScope, this.finished, this.id, this.lastProgramCreateTime, this.lastProgramId, this.lastProgramName, this.likedCount, this.name, this.originalPrice, this.picId, this.picUrl, this.price, this.programCount, this.purchaseCount, this.radioFeeType, this.rcmdText, this.rcmdtext, this.shareCount, this.subCount, this.underShelf, this.videos});

    factory DjRadioX.fromJson(Map<String, dynamic> json) {
        return DjRadioX(
            alg: json['alg'], 
            buyed: json['buyed'], 
            category: json['category'], 
            categoryId: json['categoryId'], 
            commentCount: json['commentCount'], 
            composeVideo: json['composeVideo'], 
            createTime: json['createTime'], 
            desc: json['desc'], 
            //discountPrice: json['discountPrice'] != null ? Object.fromJson(json['discountPrice']) : null,
            dj: json['dj'] != null ? Dj.fromJson(json['dj']) : null, 
            feeScope: json['feeScope'], 
            finished: json['finished'], 
            id: json['id'], 
            lastProgramCreateTime: json['lastProgramCreateTime'], 
            lastProgramId: json['lastProgramId'], 
            lastProgramName: json['lastProgramName'], 
            likedCount: json['likedCount'], 
            name: json['name'], 
            originalPrice: json['originalPrice'], 
            picId: json['picId'], 
            picUrl: json['picUrl'], 
            price: json['price'], 
            programCount: json['programCount'], 
            purchaseCount: json['purchaseCount'], 
            radioFeeType: json['radioFeeType'], 
            rcmdText: json['rcmdText'], 
            rcmdtext: json['rcmdtext'], 
            shareCount: json['shareCount'], 
            subCount: json['subCount'], 
            underShelf: json['underShelf'], 
            //videos: json['videos'] != null ? Object.fromJson(json['videos']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['buyed'] = this.buyed;
        data['category'] = this.category;
        data['categoryId'] = this.categoryId;
        data['commentCount'] = this.commentCount;
        data['composeVideo'] = this.composeVideo;
        data['createTime'] = this.createTime;
        data['desc'] = this.desc;
        data['feeScope'] = this.feeScope;
        data['finished'] = this.finished;
        data['id'] = this.id;
        data['lastProgramCreateTime'] = this.lastProgramCreateTime;
        data['lastProgramId'] = this.lastProgramId;
        data['lastProgramName'] = this.lastProgramName;
        data['likedCount'] = this.likedCount;
        data['name'] = this.name;
        data['originalPrice'] = this.originalPrice;
        data['picId'] = this.picId;
        data['picUrl'] = this.picUrl;
        data['price'] = this.price;
        data['programCount'] = this.programCount;
        data['purchaseCount'] = this.purchaseCount;
        data['radioFeeType'] = this.radioFeeType;
        data['rcmdText'] = this.rcmdText;
        data['rcmdtext'] = this.rcmdtext;
        data['shareCount'] = this.shareCount;
        data['subCount'] = this.subCount;
        data['underShelf'] = this.underShelf;
        if (this.discountPrice != null) {
            //data['discountPrice'] = this.discountPrice.toJson();
        }
        if (this.dj != null) {
            data['dj'] = this.dj.toJson();
        }
        if (this.videos != null) {
            //data['videos'] = this.videos.toJson();
        }
        return data;
    }
}