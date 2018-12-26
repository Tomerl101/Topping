import 'dart:io';

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

void handleGetRequest(HttpRequest request) {
  request.response
    ..write('User sent request ${request.method} from ${request.uri.path}')
    ..close();
}
