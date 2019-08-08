class Staff {
  final String id;
  final String staffName;
  final String image;
  final String email;
  final String completedProjects;
  final String phoneNumber;
  final String address;

  const Staff(
      {this.id,
      this.staffName,
      this.image,
      this.email,
      this.completedProjects,
      this.phoneNumber,
      this.address});
}

// var staffData = <Staff>[
//   Staff("1", "Saroj Sapkota", "a@a.com", "45", ""),
//   Staff("2", "Rajat Shrestha", "a@a.com", "35", ""),
//   Staff("3", "Pushparaj Poudel", "a@a.com", "12", ""),
//   Staff("4", "Ganesh Oli", "a@a.com", "19", ""),
// ];

List staffDetails() {
  return [
    Staff(
        id: "1",
        staffName: "Mohit Paudel",
        image: "assets/images/staffs/mohit.jpg",
        email: "paudel823@gmail.com",
        completedProjects: "15",
        phoneNumber: "9860055455",
        address: "Banasthali"),
    Staff(
        id: "2",
        staffName: "Ishan Roka",
        image: "assets/images/staffs/Ishan.jpeg",
        email: "ishan@gmail.com",
        completedProjects: "12",
        phoneNumber: "98123456789",
        address: "Ghattatar"),
    Staff(
        id: "3",
        staffName: "Nishu Roka",
        image: "assets/images/staffs/Nishu.jpeg",
        email: "nishu@gmail.com",
        completedProjects: "15",
        phoneNumber: "9845612369",
        address: "Bhaktapur"),
    Staff(
        id: "4",
        staffName: "Ganesh Oli",
        image: "assets/images/staffs/Ganesh.JPG",
        email: "ganesh@gmail.com",
        completedProjects: "5",
        phoneNumber: "9874561236",
        address: "Kirtipur"),
  ];
}
