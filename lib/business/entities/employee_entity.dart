import 'package:equatable/equatable.dart';

class EmployeeEntity extends Equatable {
  final int id;
  final String firstName;
  final String lastName;

  EmployeeEntity(this.firstName, this.lastName, [this.id]);

  @override
  // TODO: implement props
  List<Object> get props => null;
}
