import 'package:flutter/material.dart';
import 'package:whats_app_clone/screens/colors.dart';
import 'package:whats_app_clone/widgets/chat_list.dart';
import 'package:whats_app_clone/widgets/icon_button.dart';

class Chatroom extends StatefulWidget {
  final String name;
  final String profilePic;
  const Chatroom({Key? key, required this.name, required this.profilePic})
      : super(key: key);

  @override
  State<Chatroom> createState() => _ChatroomState();
}

class _ChatroomState extends State<Chatroom> {
  TextEditingController messagecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: appBarColor,
        title: Row(
          children: [
            CircleAvatar(
                radius: 22, backgroundImage: NetworkImage(widget.profilePic)),
            const SizedBox(
              width: 8,
            ),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
        actions: const [
          IconsButtons(
            iconsname: Icons.video_call,
          ),
          SizedBox(
            width: 8,
          ),
          IconsButtons(
            iconsname: Icons.call,
          ),
          SizedBox(
            width: 8,
          ),
          IconsButtons(
            iconsname: Icons.more_vert,
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: ChatList()),
          Container(
            height: 50,
            margin: EdgeInsets.only(bottom: 2),
            decoration: BoxDecoration(
                color: const Color.fromARGB(221, 128, 127, 127),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Row(
                children: [
                  const Icon(
                    Icons.emoji_emotions,
                    size: 30,
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  Flexible(
                    // flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: messagecontroller,
                        maxLines: null,
                        // color: Colors.black,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Enter msg'),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
