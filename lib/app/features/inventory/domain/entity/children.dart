import 'package:memodio/app/core/enums/children_status.dart';

class Children {
  final String _name;
  final String _country;
  final ChildrenStatus _status;

  Children(this._name, this._country, this._status);

  get name => _name;
  get country => _country;
  get status => _status;
}
