import 'package:flutter/material.dart';
import 'package:scomp/entities/user.dart';

enum UseCases {
  welcome,
  login,
  logout, //buildAppBar

  findUsers,

  addUser,
  readUser,
  updateUser,
  deleteUser,
}

// WhhichEntity means in which file scan on login to find user
// fue sustituido por role para en el fomulario no abrumar al user
// con tanto rol, mostrando solo estas 3 opciones

enum WhhichEntity {
  students, // same isar file name
  teachers, // same isar file name
  users, // same isar file name
}

// Role means what the user is allowed to do or not
enum Role {
  admin, // crud all except tutor pays
  manager, // crud over teachers and students
  tutor, // pay student courses, tutor can IsarLink to student, and BackLink too
  causante,
}

UseCases useCase = UseCases.welcome;

User? globalUser;

resetglobalUser() => globalUser = User(
      id: null,
      email: '@gmail.com',
      password: null,
      status: ObjectStatus.pending,
      role: Role.causante,
    );

enum ObjectStatus {
  active, // means a teacher took the course to teach
  pending, // means ready for a teacher to take the course
  deleted,
  suspended, // along other reasons, suspended means no teacher or a minimun students
}

Future buidFuture(
    Future future, String errorSnapshot, String noDataSnapshot) async {
  FutureBuilder(
    future: future,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text(errorSnapshot);
      } else if (snapshot.hasData) {
        return snapshot.data;
      } else {
        return Text(noDataSnapshot);
      }
    },
  );
}
