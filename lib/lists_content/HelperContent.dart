import 'package:quotes/lists_content/list_pictures.dart';
import 'package:quotes/screens/Content_Screen.dart';

class HelperContent{

  List<String> getContent (ContentEnum contentEnum){
    if(contentEnum == ContentEnum.pictures_1){
      return pictures_1;
    }else if(contentEnum == ContentEnum.pictures_2){
      return pictures_2;
    }

    return [];

  }

}