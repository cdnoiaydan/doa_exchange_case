import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;

class DoaExchangeInterceptorDefault extends Interceptor {
  final String? key;
  DoaExchangeInterceptorDefault({this.key});

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    String errorMessage = "Bilinmeyen bir hata oluştu.";

    if (err.type == DioErrorType.connectTimeout ||
        err.type == DioErrorType.receiveTimeout) {
      errorMessage = "Bağlantı zaman aşımına uğradı.";
      getx.Get.snackbar("Hata", errorMessage,
          snackPosition: getx.SnackPosition.TOP);
    } else if (err.response != null) {
      switch (err.response!.statusCode) {
        case 400:
          errorMessage = "Geçersiz istek.";
          break;
        case 401:
          errorMessage = "Yetkilendirme başarısız. Geçersiz kimlik bilgileri.";
          break;
        case 403:
          errorMessage =
              "Bu uç noktayı kullanmaya yetkiniz yok. Lütfen planınızı yükseltin.";
          break;
        case 404:
          errorMessage = "İstenen uç nokta bulunamadı.";
          break;
        case 422:
          errorMessage =
              "Doğrulama hatası. Lütfen doğrulama hatalarını kontrol edin.";
          break;
        case 429:
          errorMessage =
              "Hız sınırınıza veya aylık limitinize ulaştınız. Daha fazla istek için lütfen planınızı yükseltin.";
          break;
        case 500:
          errorMessage =
              "Sunucu hatası. Lütfen destek ekibiyle iletişime geçin: support@freecurrencyapi.com";
          break;
        default:
          errorMessage =
              "Bilinmeyen bir sunucu hatası oluştu. Hata kodu: ${err.response!.statusCode}";
      }
      getx.Get.snackbar("Hata", errorMessage,
          snackPosition: getx.SnackPosition.TOP);
    } else {
      errorMessage = "İstek sırasında bir hata oluştu.";
      getx.Get.snackbar("Hata", errorMessage,
          snackPosition: getx.SnackPosition.TOP);
    }
    handler.reject(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(<String, dynamic>{
      "Accept": "application/json",
      "Content-type": "application/json",
    });
    options.queryParameters.addAll(<String, dynamic>{
      "apikey": key,
    });
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode != null &&
        (response.statusCode! < 200 || response.statusCode! >= 300)) {
      String errorMessage;
      switch (response.statusCode) {
        case 401:
          errorMessage = "Yetkilendirme başarısız. Geçersiz kimlik bilgileri.";
          break;
        case 403:
          errorMessage =
              "Bu uç noktayı kullanmaya yetkiniz yok. Lütfen planınızı yükseltin.";
          break;
        case 404:
          errorMessage = "İstenen uç nokta bulunamadı.";
          break;
        case 422:
          errorMessage =
              "Doğrulama hatası. Lütfen doğrulama hatalarını kontrol edin.";
          break;
        case 429:
          errorMessage =
              "Hız sınırınıza veya aylık limitinize ulaştınız. Daha fazla istek için lütfen planınızı yükseltin.";
          break;
        case 500:
          errorMessage =
              "Sunucu hatası. Lütfen destek ekibiyle iletişime geçin: support@freecurrencyapi.com";
          break;
        default:
          errorMessage =
              "Bilinmeyen bir sunucu hatası oluştu. Hata kodu: ${response.statusCode}";
      }
      getx.Get.snackbar("Hata", errorMessage,
          snackPosition: getx.SnackPosition.TOP);
      return handler.reject(DioError(
        requestOptions: response.requestOptions,
        response: response,
        type: DioErrorType.response,
        error: errorMessage,
      ));
    }
    super.onResponse(response, handler);
  }
}
