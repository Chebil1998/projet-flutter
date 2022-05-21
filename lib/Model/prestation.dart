class prestation {
  int codeDemande;

  get getCodeDemande => this.codeDemande;

 set setCodeDemande( codeDemande) => this.codeDemande = codeDemande;  int idcreater;
String lieu;
  DateTime date;

  get getIdcreater => this.idcreater;

 set setIdcreater( idcreater) => this.idcreater = idcreater;  String Details;
  


  get getDetails => this.Details;

  set setDetails(Details) => this.Details = Details;

  get getLieu => this.lieu;

  set setLieu(lieu) => this.lieu = lieu;

  get getDate => this.date;

  set setDate(date) => this.date = date;
  prestation({
    required this.codeDemande,
    required this.idcreater,
    required this.Details,
    required this.lieu,
    required this.date,
  });
}
