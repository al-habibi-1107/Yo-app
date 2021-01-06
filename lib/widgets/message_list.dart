import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:vgo/models/messageModel.dart';
import 'package:vgo/widgets/messageBubble.dart';
import '../models/messageController.dart';

// Manages the List of Messages to be displayed
class MessageList extends StatefulWidget {
  final reciverName;
  final senderName;

  MessageList({this.reciverName, this.senderName});

  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  List<Message> totalConversation = [];
  @override
  void initState() {
    // initialise the Messages from the list
    totalConversation = MessageController()
        .getMessagesOfUser(widget.reciverName, "Current User");
    print(totalConversation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return totalConversation == null || totalConversation.isEmpty
        ? Center(child: Text("No Previous Chats"))
        : ListView.builder(
            itemCount: totalConversation.length,
            itemBuilder: (ctx, index) {
              bool iSent = false;
              if (totalConversation[index].sender == "Current User") {
                iSent = true;
              }
              return ListTile(
                title:
                    MessageBubble(totalConversation[index].messageText, iSent),
              );
            },
          );
  }
}
