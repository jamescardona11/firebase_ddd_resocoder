import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasedddresocoder/domain/auth/i_auth_facade.dart';
import 'package:firebasedddresocoder/domain/core/errors.dart';
import 'package:firebasedddresocoder/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NoAuthenticatedError());

    return FirebaseFirestore.instance.collection('users').doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
