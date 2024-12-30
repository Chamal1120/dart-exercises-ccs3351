import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {

  // Create an Album class instance using albumFetcher
  Album newAlbum = await albumFetcher();

  // Print the title and id using the newAlbum
  print('The id of ${newAlbum.title} is ${newAlbum.id}.');
}

// Define the Album class
class Album {
  int? id;
  String? title;

  Album (this.id, this.title);
}

// Returns a Future type Album object by fetching from jsonplaceholder
Future<Album> albumFetcher() async {
  // Define URL
  var url = Uri.https('jsonplaceholder.typicode.com', '/albums/1');

  // Call http.get method on url to create a Future and assign it to response
  var response = await http.get(url);
  
  // Convert the Json string in the response's body to a dart Map
  var reponseBody = convert.jsonDecode(response.body) as Map<String, dynamic>;

  // Create an Album object using the Map and return it
  return Album(reponseBody['id'], reponseBody['title']);
}
