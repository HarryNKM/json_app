class JsonModal
{
  String? title,body;
  int? id,userId;

  JsonModal({this.title, this.body, this.id, this.userId});

  factory JsonModal.mapToModal(Map m1)
  {
    return JsonModal(body: m1['body'],id: m1['id'],title: m1['title'],userId: m1['userId']);
  }
}