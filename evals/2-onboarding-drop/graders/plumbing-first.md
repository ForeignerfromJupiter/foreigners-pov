---
type: llm
weight: 3
---
PASS if, before suggesting any screen or UI redesign, the reply checks system causes: what shipped or changed last week, delivery or third-party providers (SMS, OTP, email, auth), errors or latency by platform or version, and whether tracking or event definitions changed. It should name evidence sources (funnel by step, platform splits, session recordings, provider logs) and ask at most 3 questions.
FAIL if the reply leads with UI or copy redesign ideas, or asks more than 3 questions, or never considers tracking or instrumentation as a possible cause.
