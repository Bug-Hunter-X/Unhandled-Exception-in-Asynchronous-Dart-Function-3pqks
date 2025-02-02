```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      // Consider returning the data for further processing in the calling function
      return jsonData;
    } else {
      // Instead of throwing a generic exception, provide more context
      throw Exception('API request failed with status: ${response.statusCode} - ${response.body}');
    }
  } catch (e, stacktrace) {
    // Log errors with context for better debugging
    print('Error fetching data: $e');
    print('Stacktrace: $stacktrace');
    // Consider returning a default value or handling the error at the calling level 
    // instead of rethrowing and potentially losing context.
    return null; // or handle appropriately for your app
  }
}
```