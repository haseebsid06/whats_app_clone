import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: const [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://t4.ftcdn.net/jpg/03/40/12/49/360_F_340124934_bz3pQTLrdFpH92ekknuaTHy8JuXgG7fi.jpg')),
            title: Text("My Status"),
            subtitle: Text("Tap to add status update"),
          ),
          Positioned(
              left: 40,
              top: 40,
              child: CircleAvatar(
                child: Icon(
                  Icons.add,
                  size: 17,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
                radius: 8,
              )),
        ]),
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text("Recent Updates"),
        ),
        const SizedBox(
          height: 8,
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 22,
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1594751543129-6701ad444259?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFyayUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80')),
          ),
          title: Text("Rawat"),
          subtitle: Text("Today 11:00 am"),
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 22,
            child: CircleAvatar(
                backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
            )),
          ),
          title: Text("Sikk"),
          subtitle: Text("Today 15:00 pm"),
        ),
      ],
    );
  }
}
