# Tracker Format

Use these columns, in this order:

`Company, Role, Link, Date Applied, Source, Referral, Status, Next Step, Follow-up Date, Notes, Last Email Date, Email Reference`

- **Status** values: Interested, Applied, Referred, Recruiter Screen, Interviewing, Offer, Rejected, Withdrawn.
- **Email Reference:** the sender and subject of the most recent email used (for example `noreply@company.com: "Your application for Senior Engineer"`), so every update can be traced to its source. Do not store message bodies.
- Dates use `YYYY-MM-DD`.
- Write valid CSV: quote fields that contain commas, quotes, or line breaks. Before overwriting a local CSV, save a backup copy next to it (for example `job-tracker.backup.csv`).
