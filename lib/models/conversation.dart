
class Conversation {
  String? image;
  String? name;
  String? message;
  bool? read;

  Conversation(
      {this.image,
      this.name,
       this.message,
       this.read});

  factory Conversation.fromJson(Map<String, dynamic> json) {
    return Conversation(
      image: json['image'],
      name: json['name'],
      message: json['message'],
      read: json['read'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['message'] = this.message;
    data['read'] = this.read;
    return data;
  }
}
