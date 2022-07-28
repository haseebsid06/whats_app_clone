import 'package:flutter/material.dart';
import 'package:whats_app_clone/info.dart';
import 'package:whats_app_clone/screens/chat_room.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(info[index]['name'].toString()),
                    subtitle: Text(
                      '',
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ),
                    trailing: index / 3 == 1
                        ? const Icon(
                            Icons.video_call,
                          )
                        : const Icon(Icons.call));
              },
            ),
          ),
        ],
      ),
    );
  }
}
