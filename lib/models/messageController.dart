// Handles all the Functionality of sending and displaying messages
import './messageModel.dart';

class MessageController {
// List of Demo Messages
  List<Message> demoMessages = [
    Message(
        messageText: "Hello User",
        reciever: "Lorem Ipsum",
        sender: "Current User",
        timeSent: DateTime.now()),
    Message(
        messageText: "Hey Lorem",
        reciever: "Current User",
        sender: "Lorem Ipsum",
        timeSent: DateTime.now()),
    Message(
        messageText: "Wanna Ipsum?",
        reciever: "Lorem Ipsum",
        sender: "Current User",
        timeSent: DateTime.now()),
    Message(
        messageText: "Hello User",
        reciever: "Wanna Ipsum",
        sender: "Demo User 2",
        timeSent: DateTime.now())
  ];

  // To get Relevant messages of a particular user , i.e either he is a reciver or a sender
  List<Message> getMessagesOfUser(String reciever, String sender) {
    List<Message> sendList = new List<Message>();
    demoMessages.forEach((msg) {
      // Ether he sent and I recieved or either I sent and he recieved

      // print('my reciver:${reciever}');
      // print('msg reciver:${msg.reciever}');
      // print(reciever == msg.reciever);
      print(sender == msg.sender);
      if ((msg.reciever == sender && msg.sender == reciever) ||
          (msg.reciever == reciever && msg.sender == sender)) {
        print('added item : ${msg.messageText}');
        sendList.add(msg);
      }
    });
    return sendList;
  }
}
