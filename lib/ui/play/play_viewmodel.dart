import 'dart:math';
import 'package:appwrite/appwrite.dart';
final EMOJI_SET = ["🇨🇺 🚀 ☢️ 🤯", "🌐 🤝 🇺🇳 🏛️"];
Future<(dynamic, dynamic)> getDataFromAppWrite() async {
  Client client = Client();
  client
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('')
    .setSelfSigned(status: true);
  final databases = Databases(client);
  const String databaseId = "";
  const collectionId = "";

  // const documentId = "";
  // Access the emoji and incident from the response
  final documents = await databases.listDocuments(
      databaseId: databaseId, collectionId: collectionId);
  final document = documents.documents[0];
  final emojis = document.data['emoji'];
  final incidents = document.data['incident'];
  return (emojis, incidents);
}

String pickRandom(final dynamic emojis) {
  Random rand = Random();
  int randIdx = rand.nextInt(emojis.length);
  return emojis[randIdx];
}