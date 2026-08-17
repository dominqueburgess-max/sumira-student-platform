import { getDatabase } from "@netlify/database";

let _db: ReturnType<typeof getDatabase> | null = null;

export function db() {
  if (!_db) {
    _db = getDatabase();
  }
  return _db;
}
