import 'package:flutter/material.dart';
import 'package:mindwell/utils/theme.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app_rounded),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: lightColorScheme.onPrimary,
                      title: const Text('Terminar chat'),
                      content: const Text(
                          '¿Estas seguro de que quieres terminar el chat? Esperamos que hayas podido recibir la ayuda que necesitabas'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Center(child: Text('Terminar chat')),
                        ),
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildChatMessage(
                    sender: 'John Doe',
                    text: 'Hey, how are you?',
                  ),
                  _buildChatMessage(
                    sender: 'Jane Doe',
                    text: 'I am doing great!',
                  ),
                  _buildChatMessage(
                    sender: 'John Doe',
                    text: 'I am glad to hear that!',
                  ),
                  _buildChatMessage(
                    sender: 'Jane Doe',
                    text: 'How about you?',
                  ),
                  _buildChatMessage(
                    sender: 'John Doe',
                    text: 'I am doing great too!',
                  ),
                  _buildChatMessage(
                      sender: 'John Doe', text: 'I am going back to 505'),
                  _buildChatMessage(
                      sender: 'John Doe',
                      text: 'But i crumble completely when you cry'),
                  _buildChatMessage(
                      sender: 'John Doe',
                      text:
                          'It seems like once again you had to greet me with goodbye'),
                  _buildChatMessage(
                      sender: 'John Doe',
                      text:
                          'I am always just about to go and spoil a surprise'),
                  _buildChatMessage(
                      sender: 'John Doe',
                      text: 'Take my hands off of your eyes too soon'),
                  _buildChatMessage(
                      sender: 'John Doe', text: 'I am going back to 505'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Action to send message
                    _sendMessage();
                  },
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatMessage({
    required String sender,
    required String text,
  }) {
    return ListTile(
      title: Text(sender),
      subtitle: Text(text),
      leading: const CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('assets/images/profile.png'),
      ),
    );
  }

  void _sendMessage() {
    String message = _textController.text.trim();
    // Action to send the message
    print('Message sent: $message');
    _textController.clear();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
