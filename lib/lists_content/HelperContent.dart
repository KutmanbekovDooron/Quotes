import 'package:quotes/lists_content/list_pictures.dart';
import 'package:quotes/screens/Content_Screen.dart';

class HelperContent{

  List<String> getContent (ContentEnum contentEnum){
    if(contentEnum == ContentEnum.category_pictures_1){
      return pictures_1;
    }else if(contentEnum == ContentEnum.category_pictures_2){
      return pictures_2;
    }else if(contentEnum == ContentEnum.category_pictures_3){
      return pictures_3;
    }else{
      return pictures_4;
    }
  }

}