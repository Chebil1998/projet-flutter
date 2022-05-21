class user {
  int id;
  String Nom;
  String Prenom;
  String Genre;
  String Email;
  String MDP;
  String Tel;
  String Role;

  user({
    required this.id,
    required this.Nom,
    required this.Prenom,
    required this.Genre,
    required this.Email,
    required this.MDP,
    required this.Tel,
    required this.Role,
  });

  get getNom => this.Nom;

  set setNom(Nom) => this.Nom = Nom;

  get getPrenom => this.Prenom;

  set setPrenom(Prenom) => this.Prenom = Prenom;

  get getGenre => this.Genre;

  set setGenre(Genre) => this.Genre = Genre;

  get getEmail => this.Email;

  set setEmail(Email) => this.Email = Email;

  get getMDP => this.MDP;

  set setMDP(MDP) => this.MDP = MDP;

  get getTel => this.Tel;

  set setTel(Tel) => this.Tel = Tel;

  get getRole => this.Role;

  set setRole(Role) => this.Role = Role;
}
