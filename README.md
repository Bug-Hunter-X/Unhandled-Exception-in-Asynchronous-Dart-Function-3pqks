# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in asynchronous Dart code where exceptions are not handled effectively, particularly within `async` functions and `Future` operations. The provided code showcases an improper use of `rethrow` within an exception handling block, which can lead to subtle bugs and difficult debugging.

The `bug.dart` file contains the flawed code.  The `bugSolution.dart` file provides an improved version with more robust exception handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe how exceptions may not be handled as intended.
3. Compare with `bugSolution.dart` to see a better approach.