# Agent Instructions — Farmer Procurement Platform (SIH26032)

This file guides any AI coding agent (e.g. Claude Code) working in this repository.

## Project Context
Read `handover.md` first for the problem statement, solution overview, and
architecture. Read `todo.md` for the current build plan and task order. Work
through `todo.md` phases in order unless told otherwise — later phases
(notifications, payments) depend on data models from earlier ones
(registration, booking).

## Tech Stack (do not swap without asking)
- Mobile app: **Flutter**
- Backend: **Node.js** (REST API)
- Database: **MongoDB**
- SMS / IVR: **Twilio**
- Push notifications: **Firebase Cloud Messaging**
- Payments: **Razorpay** (demo) — flag anywhere production would need PFMS/DBT instead
- Hosting: **AWS**

## Repo Structure (expected)
```
/mobile     → Flutter app (farmer-facing)
/server     → Node.js API (schedule, queue, notifications, payments)
/admin      → Admin/department dashboard (web)
todo.md
handover.md
agent.md
```
If this structure doesn't exist yet, create it as part of Phase 0 in `todo.md`.

## Conventions
- Keep the queue/token logic in the server as the single source of truth —
  never let the mobile app or admin dashboard compute queue position locally.
- All farmer-identifying data (Aadhaar, mobile number) must be masked in logs
  and non-essential API responses.
- Every notification trigger (SMS, push, IVR) should go through one
  notification service module, not be called ad hoc from multiple places.
- Write API changes to affect the schedule/queue/payment status fields
  consistently with the states defined in `handover.md` (e.g. payment:
  Pending → Processing → Paid).

## What to do when picking up a task
1. Check `todo.md` for the next unchecked item.
2. Implement it, mark it `[x]` in `todo.md` when done.
3. If a task reveals a new open decision (e.g. which payment gateway for
   production), add it to the "Open Decisions" section of `handover.md`
   rather than guessing silently.

## What NOT to do
- Don't hardcode Twilio/Firebase/Razorpay credentials — use environment
  variables and note required env vars in a `.env.example` file.
- Don't invent government API integrations (land records, PFMS) — stub them
  with mock data and clearly mark the stub, since real endpoints require
  official access.
- Don't change the tech stack choices in this file without flagging it to the
  user first.
