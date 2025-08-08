# 📜 On-Chain Notes App (Aptos Move)

**Developer:** Chirag Singh

## 📌 Overview
The **On-Chain Notes App** is a simple Aptos Move smart contract that allows users to:
- Write or update a personal note stored directly on the blockchain.
- Read any user's note by their wallet address.

This ensures notes are immutable in history and securely stored on-chain, enabling decentralized, censorship-resistant note-keeping.

---

## 🛠 Features
- **write_note**: Create or update your note on-chain.
- **read_note**: Read any existing note by providing its owner’s address.
- Stored as `vector<u8>` to support UTF-8 encoded text.

---

## 📂 Contract Structure
```move
module MyModule::OnChainNotes {
    struct Note { content: vector<u8> }
    public fun write_note(user: &signer, text: vector<u8>) acquires Note
    public fun read_note(addr: address): vector<u8> acquires Note
}
