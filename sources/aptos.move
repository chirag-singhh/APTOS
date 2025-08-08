module MyModule::OnChainNotes {

    use aptos_framework::signer;

    /// Struct to store a user's note
    struct Note has key, store {
        content: vector<u8>, // The note text in bytes
    }

    /// Function to create or update a note
    public fun write_note(user: &signer, text: vector<u8>) acquires Note {
        if (exists<Note>(signer::address_of(user))) {
            let note = borrow_global_mut<Note>(signer::address_of(user));
            note.content = text;
        } else {
            let new_note = Note { content: text };
            move_to(user, new_note);
        }
    }

    /// Function to read a note from an address
    public fun read_note(addr: address): vector<u8> acquires Note {
        let note = borrow_global<Note>(addr);
        note.content
    }
}

