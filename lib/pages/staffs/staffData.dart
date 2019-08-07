class Staff {
  final String id;
  final String staffName;
  final String email;
  final String completedProjects;
  final String icon;

  const Staff(
      this.id, this.staffName, this.email, this.completedProjects, this.icon);
}

var staffData = <Staff>[
  Staff("1", "Saroj Sapkota", "a@a.com", "45", ""),
  Staff("2", "Rajat Shrestha", "a@a.com", "35", ""),
  Staff("3", "Pushparaj Poudel", "a@a.com", "12", ""),
  Staff("4", "Ganesh Oli", "a@a.com", "19", ""),
];
