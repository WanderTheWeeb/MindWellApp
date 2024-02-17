import 'package:flutter/material.dart';
import 'package:google_gemini/google_gemini.dart';
import 'package:mindwell/utils/theme.dart';

const apiKey = "AIzaSyB_fA3_fymQPxkAP6Yn5JBFyknCn24o12s";

class ChatScreenAI extends StatefulWidget {
  const ChatScreenAI({Key? key});

  @override
  State<ChatScreenAI> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreenAI> {
  bool loading = false;
  List textChat = [];
  List textWithImageChat = [];

  final TextEditingController _textController = TextEditingController();
  final ScrollController _controller = ScrollController();

  //Gemini Api Key
  final gemini = GoogleGemini(
    apiKey: apiKey,
  );
  @override
  void initState() {
    super.initState();
    // Mostrar mensaje de bienvenida al cargar la pantalla
    setState(() {
      loading = true;
      // Mostrar el ícono de carga solo cuando se esté cargando el mensaje de bienvenida
    });
    showWelcomeMessage();
  }

  // Text only input
  void fromText({required String query}) {
    setState(() {
      loading = true;
      textChat.add({
        "role": "User",
        "text": query,
      });
      _textController.clear();
    });
    scrollToTheEnd();

    gemini.generateFromText(query).then((value) {
      setState(() {
        loading = false;
        textChat.add({
          "role": "Joi",
          "text": value.text,
        });
      });
      scrollToTheEnd();
    }).onError((error, stackTrace) {
      setState(() {
        loading = false;
        textChat.add({
          "role": "Joi",
          "text": error.toString(),
        });
      });
      scrollToTheEnd();
    });
  }

  void showWelcomeMessage() {
    // Enviar un mensaje de bienvenida utilizando la API de Gemini
    gemini.generateFromText("Hola").then((value) {
      setState(() {
        textChat.add({
          "role": "Joi",
          "text": value.text,
        });
      });
      loading = false;
      scrollToTheEnd();
    });
  }

  void scrollToTheEnd() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

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
            child: ListView.builder(
              controller: _controller,
              itemCount: textChat.length,
              padding: const EdgeInsets.only(bottom: 20),
              itemBuilder: (context, index) {
                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    child: Text(textChat[index]["role"].substring(0, 1)),
                  ),
                  title: Text(textChat[index]["role"]),
                  subtitle: Text(textChat[index]["text"]),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      fillColor: Colors.transparent,
                    ),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
                IconButton(
                  icon: loading
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.send),
                  onPressed: () {
                    fromText(query: _textController.text);
                  },
                ),
              ],
            ),
          )
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
