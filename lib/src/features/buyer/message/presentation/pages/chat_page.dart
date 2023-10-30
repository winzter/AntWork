import 'package:flutter/material.dart';
import '../../domain/entities/chat_entity.dart';
import '../widgets/conversation_list.dart';
import '../widgets/message_appbar.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with AutomaticKeepAliveClientMixin{
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", imageURL: "https://i.pravatar.cc/150?img=0", time: "Now"),
    ChatUsers(name: "Glady's Murphy", messageText: "That's Great", imageURL: "https://i.pravatar.cc/150?img=1", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", imageURL: "https://i.pravatar.cc/150?img=2", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", imageURL: "https://i.pravatar.cc/150?img=3", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", imageURL: "https://i.pravatar.cc/150?img=4", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", imageURL: "https://i.pravatar.cc/150?img=5", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", imageURL: "https://i.pravatar.cc/150?img=6", time: "24 Feb"),
    ChatUsers(name: "John Wick", messageText: "How are you?", imageURL: "https://i.pravatar.cc/150?img=7", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: messageAppbar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: const EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Colors.grey.shade100
                    )
                ),
              ),
            ),
          ),
          Expanded(child: ListView.builder(
            itemCount: chatUsers.length,
            padding: const EdgeInsets.only(top: 16),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index){
              return ConversationList(
                name: chatUsers[index].name,
                messageText: chatUsers[index].messageText,
                imageUrl: chatUsers[index].imageURL,
                time: chatUsers[index].time,
                isMessageRead: (index == 0 || index == 3)?true:false,
              );
            },
          ),),
          SizedBox(height: MediaQuery.of(context).size.height*0.1,)
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
