
class Conversation {
  String? image;
  String? name;
  String? lastMessage;
  bool? read;
  String id;


  Conversation(
      {this.image,
      this.name,
        required this.id,
       this.lastMessage,
       this.read});

  factory Conversation.fromJson(Map<String, dynamic> json) {
    return Conversation(
      image: json['image'],
      name: json['name'],
      lastMessage: json['lastMessage'],
      read: json['read'], id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['lastMessage'] = this.lastMessage;
    data['read'] = this.read;
    data['id'] = this.id;
    return data;
  }
}
