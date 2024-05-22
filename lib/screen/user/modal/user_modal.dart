class UserModal {
  int? id;
  String? name, username, email, phone, website;
  AddressModal? a1;
  CompanyModal? c1;

  UserModal({this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
    this.a1,
    this.c1});

  factory UserModal.mapToModal(Map m1)
  {
    return UserModal(name: m1['name'],id: m1['id'],email: m1['email'],phone: m1['phone'],username: m1['username'], website: m1['website'],a1: AddressModal.mapToModal(m1['address']),c1: CompanyModal.mapToModal(m1['company']));
  }
}

class AddressModal {
  String? street, suite, city, zipcode;
  GeoModal? geo;

  AddressModal({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory AddressModal.mapToModal(Map m1)
  {
    return AddressModal(city: m1['city'],street: m1['street'],suite: m1['suite'],zipcode: m1['zipcode'],geo: GeoModal.mapToModal(m1['geo']));
  }
}

class CompanyModal {
  String? name, catchPhrase, bs;

  CompanyModal({this.name, this.catchPhrase, this.bs});

  factory CompanyModal.mapToModal(Map m1)
  {
    return CompanyModal(name: m1['name'],bs: m1['bs'],catchPhrase: m1['catchPhrase']);
  }
}

class GeoModal {
  String? lat, lng;

  GeoModal({this.lat, this.lng});

  factory GeoModal.mapToModal(Map m1) {
    return GeoModal(lat: m1['lat'], lng: m1['lng']);
  }
}
