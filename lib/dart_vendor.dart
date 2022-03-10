import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void startGettingTelegramMessages() {
  var time = const Duration(seconds: 1);
  Timer.periodic(time, (Timer t) => getTelegramMessages());
}

String url = 'https://api.telegram.org/bot$telegramToken';

void getTelegramMessages() {
  Uri uri = Uri.parse('$url/getUpdates');
  var response = http.get(uri);
  response.then((response) {
    var jsonResponse = json.decode(response.body);
    var messages = jsonResponse['result'];
    for (var message in messages) {
      var chatId = message['message']['chat']['id'];
      var text = message['message']['text'];
      if (text.startsWith('/')) {
        var command = text.split(' ')[0];
        var args = text.split(' ').sublist(1);
        handleCommand(command, args, chatId);
      } else {
        handleMessage(text, chatId);
      }
    }
  });
}

handleCommand(command, args, chatId) {
  if (command == '/start') {
    sendMessage('Hello!', chatId);
  } else if (command == '/help') {
    sendMessage('Available commands: /start, /help', chatId);
  } else {
    sendMessage('Unknown command: $command', chatId);
  }
}

handleMessage(text, chatId) {
  Uri uri = Uri.parse('$url/sendMessage');
  var response = http.post(uri, body: {'chat_id': chatId, 'text': text});
  response.then((response) {
    print(response.body);
  });
}

sendMessage(text, chatId) {
  Uri uri = Uri.parse('$url/sendMessage');
  var response = http.post(uri, body: {'chat_id': chatId, 'text': text});
  response.then((response) {
    print(response.body);
  });
}
