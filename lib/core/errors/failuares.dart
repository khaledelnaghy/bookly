import 'package:dio/dio.dart';

abstract class Failuare {
  final String errorMessage;

  Failuare(this.errorMessage);
}

class ServerFailure extends Failuare {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TimeOut with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send TimeOut with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recevive TimeOut with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate TimeOut with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was Cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error , Please Try Again');
      // ignore: unreachable_switch_default
      default:
        return ServerFailure("Opps There is Problem Try Again Later");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your Request Not Found");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error");
    } else {
      return ServerFailure("Opps There is Problem Try Again Later");
    }
  }
}
