// ignore_for_file: public_member_api_docs, sort_constructors_first
class Activity {
  final String key;
  final String activity;
  final int participants;
  final dynamic price;
  final String type;

  Activity({
    required this.key,
    required this.activity,
    required this.participants,
    required this.price,
    required this.type,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
      key: json["key"] as String,
      activity: json["activity"] as String,
      participants: json["participants"] as int,
      price: json["price"] as dynamic,
      type: json["type"] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "key": key,
      "activity": activity,
      "participants": participants,
      "price": price,
      "type": type,
    };
  }
}
