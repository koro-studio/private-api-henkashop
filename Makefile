include .env
export

install-project:
	@echo "Installing manager..."
	npm i -g pnpm
	@echo "Installing dependencies..."
	pnpm i

start-project:
	@echo "Start the project..."
	docker compose -f docker-compose.dev.yml up -d
	pnpm run dev
