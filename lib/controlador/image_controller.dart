import 'package:get/get.dart';

class Image_Control extends GetxController {
  var _image = "assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg".obs;
  String get imagen => _image.value;

  cambiarImagen() {
    if (_image.value ==
        "assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg") {
      _image.value = "assets/images/Blanco.jpeg";
    } else if (_image.value == "assets/images/Negro.jpeg") {
      _image.value = "assets/images/Blanco.jpeg";
    } else {
      _image.value =
          "assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg";
    }
  }

  cambiarOscuro() {
    if (_image.value ==
        "assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg") {
      _image.value = "assets/images/Negro.jpeg";
    } else if (_image.value == "assets/images/Blanco.jpeg") {
      _image.value = "assets/images/Negro.jpeg";
    } else {
      _image.value =
          "assets/images/WhatsApp_Image_2021-11-20_at_8.19.57_PM.jpeg";
    }
  }
}
