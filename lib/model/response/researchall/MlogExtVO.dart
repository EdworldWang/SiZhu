

class MlogExtVO {
    int commentCount;
    int likedCount;

    MlogExtVO({this.commentCount, this.likedCount});

    factory MlogExtVO.fromJson(Map<String, dynamic> json) {
        return MlogExtVO(
            commentCount: json['commentCount'], 
            likedCount: json['likedCount'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['commentCount'] = this.commentCount;
        data['likedCount'] = this.likedCount;
        return data;
    }
}