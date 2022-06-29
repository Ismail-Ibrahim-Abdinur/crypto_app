import '../models/fetchCoins_models/fetch_coins_models.dart';
import 'package:dio/dio.dart';

class Repository {
  static String mainUrl = "https://pro-api.coinmarketcap.com/v1/";
  final String apiKey = "fbba5177-9723-418b-9bf5-24379b981c80";
  var currencyListingAPI = '${mainUrl}cryptocurrency/listings/latest';
  var dio = Dio();
  Future<BigDataModel> getCoins() async {
    try {
      dio.options.headers["X-CMC_PRO_API_KEY"] = apiKey;
      Response response = await dio.get(currencyListingAPI);
      return BigDataModel.fromJson((response.data));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BigDataModel.withError("error");
    }
  }
}
