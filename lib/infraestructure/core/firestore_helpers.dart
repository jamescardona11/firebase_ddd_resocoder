import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasedddresocoder/domain/auth/i_auth_facade.dart';
import 'package:firebasedddresocoder/domain/core/errors.dart';
import 'package:firebasedddresocoder/injection.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NoAuthenticatedError());

    return Firestore.instance.collection('user').document(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
