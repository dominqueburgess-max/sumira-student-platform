-- Unguessable bearer-link token per student for read-only parent viewing (no
-- separate parent password system yet - shareable link, like a doc share link).
CREATE TABLE parent_access_tokens (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL UNIQUE REFERENCES students(id) ON DELETE CASCADE,
  token TEXT UNIQUE NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
