import 'package:flutter/foundation.dart';

// How a Single Message will look like
class Message {
  String messageText;

  String sender;

  String reciever;

  DateTime timeSent;

  Message({
    @required this.messageText,
    @required this.reciever,
    @required this.sender,
    @required this.timeSent,
  });
}
