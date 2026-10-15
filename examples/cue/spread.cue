#Service: { owner: string, tier: *1 | int }
services: [string]: #Service
services: auth: { owner: "identity", tier: 3 }
services: billing: owner: "payments"
