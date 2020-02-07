

class ShareCover {
    int height;
    String nosKey;
    String picKey;
    String url;
    int width;

    ShareCover({this.height, this.nosKey, this.picKey, this.url, this.width});

    factory ShareCover.fromJson(Map<String, dynamic> json) {
        return ShareCover(
            height: json['height'], 
            nosKey: json['nosKey'], 
            picKey: json['picKey'], 
            url: json['url'], 
            width: json['width'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['height'] = this.height;
        data['nosKey'] = this.nosKey;
        data['picKey'] = this.picKey;
        data['url'] = this.url;
        data['width'] = this.width;
        return data;
    }
}