interface memory<T = unknown> {
    key: string;
    value: T;
    category?: string;
    createdAt: number;
    expiresAt?: number;
}
declare class MemoryMachine {
    private memories;
    remember<T>(key: string, value: T, category?: string, ttl?: number): memory<T>;
    recall<T>(key: string): T | undefined;
    forget(key: string): void;
    exists(key: string): boolean;
    clear(): void;
    cleanUp(): void;
}
export = MemoryMachine;
