# Overtime App

## Key requirement: Company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date: date rationale:text
- x User -> Devise
- x Administrator -> STI
- x AuditLog

## Features:
- x Approval workflow
- x SMS Sending -> link to approval or overtime input -> integrate with Heroku Scheduler
- x Administrate admin dashboard
- x Block non-admin and guest users
- x Email summary to managers for Approval
- x Needs to be documented if employee did not log overtime
