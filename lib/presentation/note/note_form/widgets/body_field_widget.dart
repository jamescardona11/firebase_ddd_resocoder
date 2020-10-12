import 'package:firebasedddresocoder/domain/notes/value_object_note.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firebasedddresocoder/application/notes/note_form/note_form_bloc.dart';

class BodyField extends HookWidget {
  const BodyField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.note.body.getOrCrash();
      },
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Note',
              counterText: '',
            ),
            maxLength: NoteBody.maxLength,
            maxLines: null,
            minLines: 5,
            onChanged: (value) => context.bloc<NoteFormBloc>().add(NoteFormEvent.bodyChanged(value)),
            validator: (_) => context.bloc<NoteFormBloc>().state.note.body.value.fold(
                  (f) => f.maybeWhen(
                    notes: (f) => f.maybeWhen(
                      empty: (f) => 'Cannot be empty',
                      exceedingLength: (f, i) => 'Exceeding length, max: ${i}',
                      orElse: () => null,
                    ),
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
          )),
    );
  }
}
