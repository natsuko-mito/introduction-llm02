ENV_FILE := .env

include $(ENV_FILE)

.PHONY: init
init:
	## init docker container
	@docker compose down
	@docker compose build llm02
	@docker compose up -d llm02
	## init api repo
	@docker compose exec llm02 /bin/bash /root/gihyo-langchain-search/setup-llm.sh
	## init web repo
	@docker compose exec llm02 /bin/bash /root/gihyo-langchain-search/setup-web.sh

.PHONY: docker-up
docker-up:
	@docker compose up -d --build llm02
	## init api repo
	@docker compose exec llm02 /bin/bash /root/gihyo-langchain-search/setup-llm.sh
