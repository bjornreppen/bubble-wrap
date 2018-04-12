all: dist

dist:
	tangram-bundle cawl-style.yaml
	mv cawl-style.zip dist/cawl-style.zip

	tangram-bundle cawl-style-more-labels.yaml
	mv cawl-style-more-labels.zip dist/cawl-style-more-labels.zip

	tangram-bundle cawl-style-no-labels.yaml
	mv cawl-style-no-labels.zip dist/cawl-style-no-labels.zip

clean:
	rm -rf dist
	mkdir dist

tag:
	git tag  -m 'See CHANGELOG for details.' -a v`cat VERSION`
