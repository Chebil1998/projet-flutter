class prestation {
  int CodeDemande;
  int idcreater;

  get getIdcreater => this.idcreater;

 set setIdcreater( idcreater) => this.idcreater = idcreater;  String Details;
  String lieu;
  DateTime date;

  get getCodeDemande => this.CodeDemande;

  set setCodeDemande(CodeDemande) => this.CodeDemande = CodeDemande;

  get getDetails => this.Details;

  set setDetails(Details) => this.Details = Details;

  get getLieu => this.lieu;

  set setLieu(lieu) => this.lieu = lieu;

  get getDate => this.date;

  set setDate(date) => this.date = date;
  prestation({
    required this.CodeDemande,
    required this.idcreater,
    required this.Details,
    required this.lieu,
    required this.date,
  });
}
