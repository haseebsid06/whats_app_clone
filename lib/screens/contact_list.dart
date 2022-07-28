import 'package:flutter/material.dart';
import 'package:whats_app_clone/info.dart';
import 'package:whats_app_clone/screens/chat_room.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

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
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chatroom(
                              name: info[index]['name'].toString(),
                              profilePic: info[index]['profilePic'].toString()),
                        ));
                  },
                  child: ListTile(
                      title: Text(info[index]['name'].toString()),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['message'].toString(),
                        ),
                      ),
                      leading: GestureDetector(
                        onTap: () {
                          showDialog(
                            builder: (context) => SizedBox(
                              height: 200,
                              width: 400,
                              // color: Colors.amber,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 250,
                                      width: 280,
                                      child: Image.network(
                                        info[index]['profilePic'].toString(),
                                        height: 200,
                                        width: 280,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 280,
                                      color:
                                          const Color.fromARGB(245, 47, 58, 52),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(Icons.message,
                                                color: Colors.white),
                                            //   Icons.call,
                                            Icon(
                                              Icons.call,
                                              color: Colors.white,
                                            ),

                                            Icon(
                                              Icons.video_call,
                                              color: Colors.white,
                                            ),
                                          ]),
                                    )
                                  ]),
                            ),
                            context: context,
                          );
                        },
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            info[index]['profilePic'].toString(),
                          ),
                        ),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: const TextStyle(color: Colors.grey),
                      )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
