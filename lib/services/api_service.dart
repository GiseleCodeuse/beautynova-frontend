import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<String> sendMessage(String message) async {
    final url = Uri.parse('http://localhost:5000/chat');
    final res = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'message': message}),
    );

    if (res.statusCode == 200) {
      final data = jsonDecode(res.body);
      return data['conseil'] ?? "Désolé, je n'ai pas de réponse.";
    } else {
      throw Exception('Erreur serveur ${res.statusCode}');
    }
  }
}
