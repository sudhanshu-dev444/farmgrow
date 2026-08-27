# Handover — Real-Time Procurement Information System for Farmers

**SIH ID:** SIH26032
**Category:** Software Solution
**Organization:** Ministry of Consumer Affairs, Food & Public Distribution
**Department:** Department of Consumer Affairs (DoCA)

## Problem Statement
Farmers often face long waiting times, lack of information regarding procurement
schedules, and uncertainty about procurement status at procurement centres.

## Solution Overview
A Smart Procurement Information & Queue Management System that:
- Enables farmer registration and slot booking
- Provides real-time procurement schedule visibility
- Issues digital tokens and manages queues live
- Sends multi-channel notifications (SMS / IVR / WhatsApp / push)
- Tracks procurement and payment status end-to-end
- Reduces congestion and waiting time at procurement centres

## Key Features
- Live schedule updates
- Digital token system
- Multi-channel alerts (SMS, WhatsApp, IVR, push)
- Procurement status tracking
- Farmer dashboard

## System Architecture (high level)
```
Farmer → Mobile App / IVR → Server → Admin / Department
                                │
                  ┌─────────────┼─────────────┐
              Schedule DB    Queue DB     Notification Service
                                              │
                                  SMS / WhatsApp / IVR Alerts
```

## Workflow
Farmer → Check schedule → Book/receive token → Wait (live queue status) →
Status update (notification) → Procure & payment tracked

## Technology Stack
| Layer | Choice |
|---|---|
| Mobile app | Flutter |
| Backend | Node.js |
| Database | MongoDB |
| SMS/IVR | Twilio |
| Cloud hosting | AWS |
| Push notifications | Firebase |
| Payments | Razorpay (or DBT/PFMS for production) |

## Impact
- Reduced waiting time at procurement centres
- Transparency & trust between farmers and centres
- Efficient resource management for centre staff
- Happy, better-informed farmers
- Better governance and reporting for the department

## Current Status
Idea/prototype stage — solution deck completed, architecture and tech stack
finalized. See `todo.md` for the build plan and `agent.md` for guidance on
working in this codebase.

## Open Decisions / Things to Confirm Before Building
- Whether payments go through Razorpay (demo) or must integrate directly with
  PFMS/DBT (production/government requirement)
- Source of land record / crop verification data (state-specific APIs vary)
- Whether WhatsApp notifications use the official WhatsApp Business API or
  Twilio's WhatsApp sandbox for the demo
- Centre capacity data source (manual entry vs. existing government database)

## Handover Notes
Anyone picking this up should start with `todo.md` for the phased build order,
and treat `agent.md` as the working agreement for how code in this repo should
be written and structured.
