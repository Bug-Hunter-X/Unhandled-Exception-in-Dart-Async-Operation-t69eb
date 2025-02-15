```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might fail
    await Future.delayed(Duration(seconds: 2));
    if (/* some condition that causes failure */ true) {
      throw Exception('Network request failed');
    }
    // ... process data ...
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
    // Handle timeout error
  } on FormatException catch (e) {
    print('Format error: $e');
    //Handle format exception
  } on SocketException catch (e) {
    print('Socket error: $e');
    // Handle socket exception
  } on Exception catch (e) {
    print('Error: $e');
    // Handle other exceptions
  } catch (e, stacktrace) {
    print('Unexpected error: $e, Stacktrace: $stacktrace');
    // Handle unexpected errors and print stacktrace for debugging
  } finally {
    print('Finished fetching data');
  }
}

void main() async {
  await fetchData();
}
```