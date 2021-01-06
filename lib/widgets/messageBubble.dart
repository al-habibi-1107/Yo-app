import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:vgo/utilities/constants.dart';

// Manages the message bubble
class MessageBubble extends StatelessWidget {
  String msgText;
  bool iSent;
  MessageBubble(this.msgText, this.iSent);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          iSent ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          // Chnages the orientation in case of different senders
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(iSent ? 8 : 0),
                topRight: Radius.circular(iSent ? 0 : 8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            color: mainBgColor,
          ),
          padding: EdgeInsets.all(8),
          child: Text(
            msgText,
            style: GoogleFonts.raleway(color: mainTextColor, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
