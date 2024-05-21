class CommentsJsonModal
{
  int? postId,id;
  String? name,email,body;


  CommentsJsonModal( {this.body, this.id, this.postId, this.name, this.email});

  factory CommentsJsonModal.mapToModal(Map c1)
  {
    return CommentsJsonModal(body: c1['body'],id: c1['id'],email: c1['email'],name: c1['name'],postId: c1['postId']);
  }
}