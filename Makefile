all: run

run:
	@COOKIES_PATH="$(shell echo ~/Library/Application\ Support/Firefox/Profiles/*default-release/cookies.sqlite)"; \
	docker run --entrypoint bash -it -v "$$COOKIES_PATH:/taza/cookies.sqlite" tazal3asima/taza_l3asima:l3asima -c "source /taza/venv/bin/activate && python3 /taza/taza.py"