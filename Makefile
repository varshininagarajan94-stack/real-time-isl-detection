.PHONY: all

all: public/index.html

public/index.html: README.md
	mkdir -p public
	printf '%s\n' \
	'<!doctype html>' \
	'<html lang="en">' \
	'<head>' \
	'  <meta charset="utf-8" />' \
	'  <meta name="viewport" content="width=device-width, initial-scale=1" />' \
	'  <title>Real-Time Indian Sign Language Detection</title>' \
	'  <style>' \
	'    body { font-family: Arial, sans-serif; margin: 2rem auto; max-width: 760px; line-height: 1.6; padding: 0 1rem; }' \
	'    h1 { margin-bottom: 0.25rem; }' \
	'    p { color: #333; }' \
	'  </style>' \
	'</head>' \
	'<body>' \
	'  <h1>Real-Time Indian Sign Language Detection</h1>' \
	'  <p>The deployment previously failed because Netlify was configured to run <code>make all</code> but no Makefile target existed.</p>' \
	'  <p>A Makefile target now generates this publishable page at build time in the <code>public</code> directory.</p>' \
	'  <p>Project documentation is available in the repository <code>README.md</code>.</p>' \
	'</body>' \
	'</html>' > public/index.html
