# Project Guidelines

This repository contains a Ruby on Rails application. Follow the conventions already established in the project, and adapt your work to its actual Ruby, Rails, and dependency versions.

## Before Making Changes

- Read the relevant code and nearby tests before editing. Check `Gemfile`, `.ruby-version`, and project configuration when version or tooling details matter.
- Identify the existing architecture and follow its patterns. Do not introduce a new abstraction, dependency, or broad refactor unless the task requires it.
- Keep changes focused and preserve existing behavior outside the requested scope.

## Ruby and Rails

- Prefer clear, idiomatic Ruby and conventional Rails patterns.
- Keep controllers focused on HTTP concerns: load data, authorize requests, delegate work where appropriate, and render or redirect.
- Use strong parameters for request input. Put domain behavior in the model or an existing service/domain layer rather than growing controllers.
- Use Active Record associations and scopes consistently. Watch for N+1 queries and avoid unnecessary database queries or callbacks with hidden side effects.
- Follow the application's existing routing, view, mailer, job, and API conventions. Do not add a layer or service object for trivial logic.
- Handle expected failure cases explicitly and provide useful validation errors and user-facing responses.

## Database Changes

- Make schema changes through migrations; do not edit the schema file as a substitute for a migration.
- Keep migrations safe and reversible when practical. Consider existing data, indexes, foreign keys, and deployment impact when changing large or populated tables.
- Never place secrets or environment-specific values in source code or migrations.

## Security

- Enforce authentication and authorization using the application's existing mechanisms; do not rely on hiding UI controls as access control.
- Treat parameters, uploaded files, and external service responses as untrusted input. Use parameterized queries and rely on Rails' normal HTML escaping.
- Do not expose credentials, sensitive user data, or internal exception details in logs or responses.
- Preserve Rails protections such as CSRF checks unless the application has a deliberate, documented exception.

## Tests and Verification

- Use the test framework and helpers already present in the repository. Add or update focused tests for behavior changes and regressions.
- Run the narrowest relevant test first, then any broader checks appropriate to the change. Use the project's documented commands rather than assuming a particular test framework.
- Do not change or remove a test merely to make a failing suite pass; investigate whether the implementation or the expectation is wrong.
- If a check cannot be run, state that clearly and explain why.

## Working in This Repository

- Inspect the available project scripts and documentation before choosing commands. Common Rails commands such as `bin/rails test`, `bundle exec rspec`, or `bin/rubocop` may not apply to every project.
- Avoid changing generated files, lockfiles, or unrelated formatting unless required by the task.
- Summarize what changed and which checks were run when finishing a task.
