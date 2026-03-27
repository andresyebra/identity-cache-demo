# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Rails 7.2.3 application (Ruby 3.4.8) demonstrating identity caching patterns. Uses SQLite3, Hotwire (Turbo + Stimulus), and importmap for JavaScript.

## Common Commands

### Development
```bash
bin/setup              # Idempotent setup: installs gems, prepares DB, clears logs
bin/rails server       # Start Puma on port 3000
```

### Testing
```bash
bin/rails test                    # Run all unit/integration tests (Minitest)
bin/rails test test/models/foo_test.rb        # Run a single test file
bin/rails test test/models/foo_test.rb:42     # Run a single test by line number
bin/rails test:system             # Run system tests (Capybara + headless Chrome)
```

### Linting & Security
```bash
bin/rubocop            # Lint with rubocop-rails-omakase style
bin/brakeman           # Static security analysis
bin/importmap audit    # JavaScript dependency audit
```

### Database
```bash
bin/rails db:prepare       # Create and migrate database
bin/rails db:migrate       # Run pending migrations
bin/rails db:test:prepare  # Prepare test database
```

## Architecture

- **Module:** `IdentityCacheDemo`
- **Database:** SQLite3 with files in `storage/` directory
- **Frontend:** Hotwire stack (Turbo + Stimulus) with importmap (no Node.js/bundler)
- **Autoloading:** `lib/` is autoloaded (excluding `lib/assets` and `lib/tasks`)
- **Tests:** Minitest with parallel execution (`:number_of_processors` workers), fixtures auto-loaded
- **System tests:** Selenium with headless Chrome at 1400x1400
- **CI:** GitHub Actions runs brakeman, importmap audit, rubocop, and full test suite

## Style

Uses `rubocop-rails-omakase` — the Rails default opinionated style guide. Run `bin/rubocop` to check conformance.