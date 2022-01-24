import 'package:flutter/services.dart';

Future<String> fetchFileFromAssets(String assetsPath) async {
  try {
    return rootBundle.loadString(assetsPath).then((file) => file.toString());
  }catch(e){
    print('error');
  }
}
