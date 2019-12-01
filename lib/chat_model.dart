import 'package:flutter/material.dart';

class Chat {
  int id;
  String name;
  String image;
  String time;
  String lastMessage;
  bool isSeen;

  Chat({
    this.id,
    this.name,
    this.image,
    this.time,
    this.lastMessage,
    this.isSeen,
  });

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        time: json["time"],
        lastMessage: json["lastMessage"],
        isSeen: json["isSeen"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "time": time,
        "lastMessage": lastMessage,
        "isSeen": isSeen,
      };
}

List<Chat> chats = [
  Chat(
      id: 0,
      name: 'Mirkan Çalışkan',
      time: '13:00',
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhv4QVnYLBBbGGPxi8Zgr1YL9j_AR44XU0ifZBKXmGBMSIw1SS&s",
      isSeen: false,
      lastMessage: "Kanka saat kaçta okulda oluyoruz ?"),
  Chat(
      id: 1,
      name: 'Gazihan Alankuş',
      time: '10:00',
      image:
          "https://pbs.twimg.com/profile_images/993770834467713025/K5X6ep1z_400x400.jpg",
      isSeen: true,
      lastMessage: "Harika, Teşekkürler!"),
  Chat(
      id: 2,
      name: 'Can Taşpınar',
      time: '14:00',
      image:
          "https://miro.medium.com/fit/c/256/256/1*piA_JsteMHIyYko4y4uMTw.jpeg",
      isSeen: false,
      lastMessage: "Selam!"),
];

const Color whatsAppTealGreen = Color(0xff075E54);
const Color whatsAppLightGreen = Color(0xff25D366);