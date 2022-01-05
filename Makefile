default: run

.PHONY: clean
clean:
	rm -r .pyenv


.PHONY: install
install:
	python3 -m venv .pyenv &&\
		. .pyenv/bin/activate &&\
		pip install --upgrade pip &&\
		pip install csvkit


.PHONY: run
run:
	@. .pyenv/bin/activate &&\
		csvsql --query "`cat query.sql`" data.csv