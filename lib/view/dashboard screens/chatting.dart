import 'package:flutter/material.dart';
import 'package:muzahir_fyp/assets/images.dart';
import 'package:muzahir_fyp/assets/spacing.dart';
import 'package:muzahir_fyp/components/auth_widgets.dart';
import 'package:muzahir_fyp/view/dashboard%20screens/message_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text("Chat"),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        actions: const [Icon(Icons.notifications_none)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: message_model.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MessageScreen(
                                  title: message_model[index].title.toString(),
                                  image:
                                      message_model[index].leading.toString(),
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: size30,
                      child:
                          Image.asset(message_model[index].leading.toString()),
                    ),
                    title: Text(
                      message_model[index].title.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    subtitle: Text(
                      message_model[index].subtitle.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    trailing: Text(
                      message_model[index].trailing.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

//model
class Message_Model {
  String? leading;
  String? title;
  String? subtitle;
  String? subtitle2;
  String? trailing;
  Message_Model(
      {required this.leading,
      required this.title,
      required this.subtitle,
      this.subtitle2,
      required this.trailing});
}

final message_model = [
  Message_Model(
      leading: image_profile,
      title: 'ahmad',
      subtitle: 'Hope you are fine',
      trailing: '111/6',
      subtitle2: '1'),
  Message_Model(
      leading: image_profile,
      title: 'akbar zaman',
      subtitle: 'Can we have a talk',
      trailing: '13/6'),
  Message_Model(
      leading: image_welcome,
      title: 'Mr Sami',
      subtitle: 'Aight, noted',
      trailing: '14/6',
      subtitle2: '1'),
  Message_Model(
      leading: image_logo,
      title: 'Abdullah',
      subtitle: 'Hope you are fine',
      trailing: '17/6',
      subtitle2: '1'),
  Message_Model(
      leading: image_profile,
      title: 'waheed',
      subtitle: 'Aight, noted',
      trailing: '10/6',
      subtitle2: '1'),
  Message_Model(
      leading: image_profile,
      title: 'hassan',
      subtitle: 'Hope you are fine',
      trailing: '17/6',
      subtitle2: '1'),
  Message_Model(
      leading: image_thanks,
      title: 'aslam',
      subtitle: 'Hope you are fine',
      trailing: '17/6',
      subtitle2: '1'),
];
