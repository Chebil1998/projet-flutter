class user {
  int id;
  String nom;
  String prenom;
  String genre;
  String email;
  String mdp;
  String tel;
  String role;

 int get getId => this.id;

 set setId(int id) => this.id = id;

  get getNom => this.nom;

 set setNom( nom) => this.nom = nom;

  get getPrenom => this.prenom;

 set setPrenom( prenom) => this.prenom = prenom;

  get getGenre => this.genre;

 set setGenre( genre) => this.genre = genre;

  get getEmail => this.email;

 set setEmail( email) => this.email = email;

  get getMdp => this.mdp;

 set setMdp( mdp) => this.mdp = mdp;

  get getTel => this.tel;

 set setTel( tel) => this.tel = tel;

  get getRole => this.role;

 set setRole( role) => this.role = role;
  user({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.genre,
    required this.email,
    required this.mdp,
    required this.tel,
    required this.role,
  });

  
}
