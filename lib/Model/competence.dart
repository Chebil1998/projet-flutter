class competence {
  int idcompetence;
  int idcreater;
  String nomcomp;
  String detailcomp;
  competence({
    required this.idcompetence,
    required this.idcreater,
    required this.nomcomp,
    required this.detailcomp,
  });
 int get getIdcompetence => this.idcompetence;

 set setIdcompetence(int idcompetence) => this.idcompetence = idcompetence;

  get getIdcreater => this.idcreater;

 set setIdcreater( idcreater) => this.idcreater = idcreater;

  get getNomcomp => this.nomcomp;

 set setNomcomp( nomcomp) => this.nomcomp = nomcomp;

  get getDetailcomp => this.detailcomp;

 set setDetailcomp( detailcomp) => this.detailcomp = detailcomp;
}
