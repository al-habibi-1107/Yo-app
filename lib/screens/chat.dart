import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:vgo/utilities/constants.dart';
import '../widgets/message_list.dart';

// Chat Screen
class ChatScreen extends StatelessWidget {
  String recieverName = '';
  String recieverImg = '';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;

    // to get the details of the user whose chat is to be sent
    // for app bar and image
    recieverName = arguments['recieverName'];
    recieverImg = arguments['recieverImage'];

    return Scaffold(
      backgroundColor: bottomContainerColor,
      appBar: AppBar(
        backgroundColor: bottomContainerColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  recieverImg,
                )),
            SizedBox(
              width: 10,
            ),
            Text(
              recieverName,
              style: GoogleFonts.raleway(
                  color: lightFadeText, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      // Use the list of messages to display the list view of texts
      body: MessageList(
        senderName: 'Current User',
        reciverName: recieverName,
      ),
    );
  }
}
