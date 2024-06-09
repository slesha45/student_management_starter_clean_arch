import 'package:equatable/equatable.dart';

class BatchEntity extends Equatable {
  final String? batchID;
  final String batchName;  

  const BatchEntity({
    this.batchID,
    required this.batchName,
  });
  
  @override
  List<Object?> get props => [batchID, batchName];
}
