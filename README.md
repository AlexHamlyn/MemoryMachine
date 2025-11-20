# MemoryMachine
MemoryMachine is a lightweight and flexible TypeScript module designed for Roblox-TS. It allows you to store, retrieve, and manage in-game “memories” (data points) efficiently. Features include:

- Store any type of data with a unique key.
- (Optional) categories for organizing memories.
- (Optional) Time-to-live (TTL) support for temporary data.
- Automatic cleanup of expired memories.
- Easy retrieval, existence checks, and deletion of memories.

Perfect for tracking player states, temporary buffs, AI memory, game events, or any system where dynamic data persistence is needed.

# Installing

To install **MemoryMachine**, follow these steps:

1. **Update `default.project`**  
   Open your `default.project` file and locate the `ReplicatedStorage` class model. Under `node_modules`, add:

   ```json
   "@lock-studio-games": {
     "$path": "node_modules/@lock-studio-games"
   }
   ```


2. **Update `tsconfig.json`**
  Open your tsconfig.json file and locate the typeRoots array. Add the following entry below "node_modules/@rbxts" (ensure there’s a comma at the end of       "node_modules/@rbxts"):

     ```json
     "node_modules/@lock-studio-games"
     ```

3. **Install the module**
  Open your terminal in your project folder and run:

     **`'npm install @lock-studio-games/memorymachine'`**

That's all you need to install the file.

# Example Usage

```typescript
import { MemoryMachine } from "./MemoryMachine";

// Create a new MemoryMachine instance
const memoryMachine = new MemoryMachine();

// Remember something
memoryMachine.remember("username", "Alex", "user", 5); // ttl 5 Seconds
memoryMachine.remember("highscore", 1200, "game");

// Recall a memory
const username = memoryMachine.recall<string>("username");
console.log(username); // Output: Alex

const highscore = memoryMachine.recall<number>("highscore");
console.log(highscore); // Output: 1200

// Check if a memory exists
if (memoryMachine.exists("username")) {
    console.log("Username memory exists!");
}

// Forget a memory
memoryMachine.forget("highscore");
console.log(memoryMachine.recall("highscore")); // Output: undefined

// Clean up expired memories manually
memoryMachine.cleanUp();

// Clear all memories
memoryMachine.clear();
```

The licence is provided to you in the git repo and I suggest reading it, Thanks for using my module!
