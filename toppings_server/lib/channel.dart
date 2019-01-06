import 'toppings_server.dart';

/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class ToppingsServerChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    router.route('/books[/:index]').linkFunction((Request incomingRequest) async {
      final String reqMethod = incomingRequest.method;
      final String index = incomingRequest.path.variables["index"];
      if (reqMethod == 'GET') {
        if(index != null) {
          return Response.ok('Showing book by index: $index');
        }
        return Response.ok('Showing all books.');
      } else if (reqMethod == 'POST') {
        return Response.ok('POST Request.');
      } else if (reqMethod == 'PUT') {
        return Response.ok('PUT Request.');
      } else if (reqMethod == 'DELETE') {
        return Response.ok('DELETE Request.');
      }
      // If all else fails
      return Response(405, null, 'Not sure what you\'re asking here');
    });

    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/
    router.route("/example")
      .linkFunction((request) async {
        return Response.ok({"key": "value"});
      });
      
    router.route('/lotan').linkFunction((request) async {
      return Response.ok('Doron tokea et lotan bathat!! ohh yehhh!!')
        ..contentType = ContentType.TEXT;
      });
    return router;
  }
}