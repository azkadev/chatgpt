// ignore_for_file: non_constant_identifier_names

library chatgpt;

import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

int calculate() {
  return 6 * 7;
}

String generate_uuid() {
  return Uuid().v4();
}

class ChatbotAccount {
  late String email;
  late String password;
  ChatbotAccount({
    required this.email,
    required this.password,
  });
}

class Chatbot {
  late ChatbotAccount chatbotAccount;
  Chatbot({
    required this.chatbotAccount,
  });

  init({
    required Map self,
    required Map config,
    String conversation_id = "",
  }) {
    self["config"] = config;
    self["conversation_id"] = conversation_id;
    self["parent_id"] = generate_uuid();
    if (config.containsKey("session_token") || (config.containsKey("email") && config.containsKey("password"))) {
      self["refresh_session"];
    }
  }

  get_chat_stream() async {
    String url = "https://chat.openai.com/backend-api/conversation";
    http.Response response = await http.post(
      Uri.parse(url),
    );
  }

  resetChat() {}

  getChatText() {}

  getChatResponse() {}
}
