import 'dart:math';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:appwrite/appwrite.dart';

Future<List<dynamic>> getDataFromAppWrite() async {
  Client client = Client();
  client
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject(dotenv.get('PROJECT_KEY'))
    .setSelfSigned(status: true);
  final databases = Databases(client);
  final databaseId = dotenv.get('DATABASE_ID');
  final collectionId = dotenv.get('COLLECTION_ID');
  // Access the emoji and incident from the response
  final documents = await databases.listDocuments(
      databaseId: databaseId, collectionId: collectionId);
  final document = documents.documents[0];
  final emojis = document.data['emoji'];
  final incidents = document.data['incident'];
  return [emojis, incidents];
}



List<dynamic> pickRandomIndices(final dynamic emojis) {
  Random rand = Random();
  int randIdx = rand.nextInt(emojis.length);
  Set<int> indicesSet = {};
  indicesSet.add(randIdx);
  while (indicesSet.length < 4) {
    indicesSet.add(rand.nextInt(emojis.length));
  }
  List<int> indices = indicesSet.toList();
  indices.shuffle();
  return [randIdx, indices];
}