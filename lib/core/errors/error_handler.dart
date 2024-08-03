import 'dart:developer';

import 'package:vlearn_test/core/constants/constants.dart';

import 'exceptions.dart';

///
///
/// [ErrorHandler] class is responsible of handling all the remote, local and user's input error
///
class ErrorHandler {
  /// [handleRemoteError] decides if the remote request has succeeded or not
  ///
  /// Returns:
  ///   true if there were no errors
  ///
  /// Throws:
  ///  [ServerException] in the following cases
  ///   a- With [ErrorCode.UNAUTHENTICATED]
  ///   b- With [ErrorCode.WRONG_INPUT]
  ///   c- With [ErrorCode.FORBIDDEN]
  ///   d- With [ErrorCode.SERVER_ERROR]
  ///
  static bool handleRemoteError(int statusCode, String message) {
    log("${LoggerColors.green} $message");
    if (statusCode >= 200 && statusCode < 300) {
      return true;
    } else if (statusCode == 401) {
      throw ServerException(ErrorCode.UNAUTHENTICATED, message);
    } else if (statusCode == 400) {
      throw ServerException(ErrorCode.WRONG_INPUT, message);
    } else if (statusCode == 403) {
      throw ServerException(ErrorCode.FORBIDDEN, message);
    }
    return false;
  }
}
