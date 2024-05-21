class PhotosModal
{
  String? title,url,thumbnailUrl;
  int? id,albumId;

  PhotosModal({this.title, this.url, this.thumbnailUrl, this.id, this.albumId});

  factory PhotosModal.mapToModal(Map p1)
  {
    return PhotosModal(id: p1['id'],title: p1['title'],albumId: p1['alnumId'],thumbnailUrl: p1['thumbnailUrl'],url: p1['url']);
  }
}