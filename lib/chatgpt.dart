library chatgpt;

int calculate() {
  return 6 * 7;
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

  resetChat() {

  }
}
