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

## Contract Address 
- "Result": {
    "transaction_hash": "0xcd751a98db57c2e2c829abc14fdb7072d20cd331d6de1ca6304a3d2dbb93ecfc",
    "gas_used": 1908,
    "gas_unit_price": 100,
    "sender": "8c7dee924baf2eb5e74fed159b20daaf564f511d42edec6cddd4f249ec741bb9",
    "sequence_number": 0,
    "replay_protector": {
      "SequenceNumber": 0
    },
    "success": true,
    "timestamp_us": 1754650131125939,
    "version": 27893096,
    "vm_status": "Executed successfully"
  }
}

## 📂 Contract Structure
```move
module MyModule::OnChainNotes {
    struct Note { content: vector<u8> }
    public fun write_note(user: &signer, text: vector<u8>) acquires Note
    public fun read_note(addr: address): vector<u8> acquires Note
}
```

<img width="1918" height="857" alt="image" src="https://github.com/user-attachments/assets/8629884f-4c88-4525-a80c-a50e6acea1e7" />

