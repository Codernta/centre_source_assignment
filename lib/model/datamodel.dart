import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

  int total;
  int totalHits;
  List<Hit> hits;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        total: json["total"],
        totalHits: json["totalHits"],
        hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "totalHits": totalHits,
        "hits": List<dynamic>.from(hits.map((x) => x.toJson())),
      };
}

class Hit {
  Hit({
    required this.id,
    required this.pageUrl,
    required this.largeImageUrl,
    required this.userImageUrl,
  });

  int id;
  String pageUrl;
  String largeImageUrl;
  String userImageUrl;

  factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        id: json["id"],
        pageUrl: json["pageURL"],
        largeImageUrl: json["largeImageURL"],
        userImageUrl: json["userImageURL"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pageURL": pageUrl,
        "largeImageURL": largeImageUrl,
        "userImageURL": userImageUrl,
      };
}

enum Type { PHOTO }

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map, this.reverseMap);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
