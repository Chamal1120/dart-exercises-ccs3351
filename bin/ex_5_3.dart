import 'dart:convert';
import 'dart:io';

// Yields a stream containing lines inside the txt file
Stream<String> readFileAsync(File inputFile) async* {
  Stream<String> lines = inputFile.openRead() // Read the file as a byte stream
    .transform(Utf8Decoder()) // convert to utf8 coding
    .transform(LineSplitter()); // Split the lines

  await for (var line in lines) {
    await Future.delayed(Duration(milliseconds: 10)); // Simulated delay to make it more natural
    yield line;
  }
}

void main() async {
  // Define the file path
  File myFile = File('fileForQ3.txt');

  // Consume the Stream returing from readFileAsync
  await for (var line in readFileAsync(myFile)) {
    print(line);
  }
}
