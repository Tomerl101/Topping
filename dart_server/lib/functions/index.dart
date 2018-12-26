import 'dart:io';

//my own implemintion to listen() when initiate http server

//echo ;hello world on every request to the server
void myListen(server) {
  server.listen((HttpRequest request) {
    request.response
      ..write('Hello, User!')
      ..close();
  });
}

//here we using a FOR LOOP that wait for request instead of calling listen(...)
//it may block the program because of infinity loop
void listenForReq(server) async {
  await for (HttpRequest request in server) {
    request.response
      ..write('Hello, world!')
      ..close();
  }
}
