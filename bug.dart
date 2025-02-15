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
  } on Exception catch (e) {
    print('Error: $e');
    // Handle other errors
  } catch (e) {
    print('Unexpected error: $e');
    // Handle unexpected errors
  } finally {
    print('Finished fetching data');
  }
}

void main() async {
  await fetchData();
}
```