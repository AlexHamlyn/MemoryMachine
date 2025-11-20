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

The licence is provided to you in the git repo and I suggest reading it, Thanks for using my module!
