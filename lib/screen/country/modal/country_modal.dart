class CountryModal
{
  List? capital=[];
  List? latlng=[];
  List? continents=[];
  String? region,subregion;
  dynamic area;
  NameModal? namemodal;
  FlagsModal? flagsmodal;

  CountryModal(
      {this.capital,
      this.latlng,
      this.continents,
      this.region,
      this.subregion,
      this.area,
      this.namemodal,
      this.flagsmodal});

  factory CountryModal.mapToModal(Map m1)
  {
    return CountryModal(area: m1['area'],capital: m1['capital'],continents: m1['continents'],latlng:  m1['latlng'],region: m1['region'],subregion: m1['subregion'],flagsmodal: FlagsModal.mapToModal(m1['flags']),namemodal:NameModal.mapToModal(m1['name']));
  }
}
class NameModal
{
  String? common,official;

  NameModal({this.common, this.official});
  factory NameModal.mapToModal(Map m1)
  {
    return NameModal(common: m1['common'],official: m1['official'] );
  }
}
class FlagsModal
{
 String? png;

 FlagsModal({this.png});
 factory FlagsModal.mapToModal(Map m1)
 {
  return FlagsModal(png: m1['png']);
 }
}