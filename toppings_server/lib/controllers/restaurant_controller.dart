import 'package:toppings_server/toppings_server.dart';

class BooksController extends HTTPController {
  // invoked for GET /books
  @httpGet // HTTPMethod meta data
  Future<Response> getAllBooks() async => new Response.ok('Showing all books');

  // invoked for GET /books/:index
  @httpGet // HTTPMethod meta data
  Future<Response> getBook(@HTTPPath("index") int idx) async => new Response.ok('Showing single book');

  // invoked for POST /books
  @httpPost // HTTPMethod meta data
  Future<Response> addBook() async => new Response.ok('Added a book');

  // invoked for PUT /books
  @httpPut // HTTPMethod meta data
  Future<Response> updateBook() async => new Response.ok('Updated a book');

  // invoked for DELETE /books
  @httpDelete  // HTTPMethod meta data
  Future<Response> deleteBook() async => new Response.ok('Deleted a book');
}
