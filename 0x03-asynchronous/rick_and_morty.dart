import 'dart:convert';
import 'package:http/http.dart' as http;

printRmCharacters() async {
  try {
    final characters = await fetchCharacterNames();
    for (var character in characters) {
      print(character);
    }
  } catch (e) {
    print('error caught: $e');
  }
}

Future<List<String>> fetchCharacterNames() async {
  final response =
      await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
  final characters = jsonDecode(response.body)['results'];
  return List<String>.from(characters.map((character) => character['name']));
}
