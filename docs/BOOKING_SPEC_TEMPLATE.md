
# Booking Spec (Fill this in)

## API
- Base URL (dev): 
- Base URL (prod): 
- Auth (none/basic/bearer/api-key): 

## Endpoints
| Name | Method | Path | Purpose |
|------|--------|------|---------|
| Create booking | POST | /api/v1/booking | Submit booking |
| Availability | GET | /api/v1/availability | Fetch open slots |

### Payloads
**Create booking (example)**
```json
{
  "name": "Jane Doe",
  "email": "jane@example.com",
  "phone": "+1-604-555-1234",
  "service": "Office Cleaning",
  "address": "123 Main St, Vancouver, BC",
  "date": "2025-08-25",
  "time": "10:00",
  "notes": "Reception needs priority"
}
```

### Responses
- 201 Created: `{{ "bookingId": "abc123", "status": "confirmed" }}`
- 400/422: validation errors
- 401/403: auth
- 500: server error

## Confirmation
- Send email? SMS? Both?
- Email template path:
- SMS provider / template:

## Webhooks
- URL(s) to notify on create/cancel:

## Env Vars
- API_URL=
- API_KEY=
- GA_MEASUREMENT_ID=

## Frontend behavior
- Disable button while submitting
- Handle failures gracefully
- Show success page / modal with reference number
