class Userx {
  int index;
  String about;
  String name;
  String email;
  String picture;

  Userx(dynamic value){
    this.index = value['index'];
    this.about= value['about'];
    this.name= value['name'];
    this.email = value['email'];
    this.picture = value['picture'];
  }

}