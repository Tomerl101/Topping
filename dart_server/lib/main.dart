import 'dart:io';
import 'dart:convert';

//TODO:return header [Access-Control-Allow-Origin: *]!!!
//enable credentials -> Access-Control-Allow-Credentials: true

Future main() async {
  HttpServer server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    4040,
  );

  server.listen((HttpRequest request) {
    switch (request.method) {
      case 'GET':
        print("GET");
        handleGetRequest(request);
        break;
      case 'POST':
        print("POST");
        handleGetRequest(request);
        break;
    }
  });

  print('Server running on http://${server.address.host}:'
      '${server.port}');
}

//return json
void handleGetRequest(HttpRequest request) {
  print("REQUEST MADE");
  var body = json.encode({
    "userId": 1,
    "id": 1,
    "title": "This is server answer",
    "body":
        "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  });
  request.response
    ..write(body)
    ..close();
}
