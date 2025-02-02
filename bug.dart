```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions appropriately
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```