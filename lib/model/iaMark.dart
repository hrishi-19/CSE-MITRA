class iaMark{
  late String usn;
  late block blocks;
  iaMark({required this.usn,required this.blocks});
}
class block{
  late String name;
  late ia1 i1;
  late ia2 i2;
  block({required this.name,required this.i1,required this.i2});
}
class ia1{
  late String cns;
  late String up;
  late String me;
  late String dbms;
  late String atc;
  late String adp;
  ia1({
    required this.cns,
    required this.up,
    required this.me,
    required this.dbms,
    required this.atc,
    required this.adp
});
}
class ia2{
  late String cns;
  late String up;
  late String me;
  late String dbms;
  late String atc;
  late String adp;
  ia2({
    required this.cns,
    required this.up,
    required this.me,
    required this.dbms,
    required this.atc,
    required this.adp
  });

}