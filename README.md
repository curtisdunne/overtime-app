# Overtime App

## Key requirement: Company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date: date rationale:text
- x User -> Devise
- x Administrator -> STI

## Features:
- Approval workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non-admin and guest users
- Email summary to managers for Approval
- Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting
- Icons from Font Awesome
- x Update the styles for forms

## Refactor TODOS:
- Refactor user association integration test in post_spec
- Refactor posts/form for admin user with status
- fix post_spec to use factories
- fix post_spec to have correct user reference and not require update 
