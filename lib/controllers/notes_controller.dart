import 'package:get/get.dart';
import 'package:notes_app/services/Api.dart';

class NotesController extends GetxController {
  List noteList = [
    {
      'title': 'Note 1',
      'body':
          "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets conta",
    },
    {
      'title': 'Note 2',
      'body':
          "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when it to make a type specimen book. It h",
    },
    {
      'title': 'Note 3',
      'body':
          "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centur",
    },
    {
      'title': 'Note 4',
      'body':
          "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took  It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets conta",
    }
  ];
  var list;
  final service = Api();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    service.getNotes().then((value) {
      noteList = value
;update();    });


  }
}
