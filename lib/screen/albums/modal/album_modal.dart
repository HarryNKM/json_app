class AlbumJsonModal
{
  String? title;
  int? id,userId;


  AlbumJsonModal({this.title, this.id, this.userId});

  factory AlbumJsonModal.mapToModal(Map a1)
  {
    return AlbumJsonModal(title:a1['title'], id: a1['id'],userId: a1['userId']);
  }
}