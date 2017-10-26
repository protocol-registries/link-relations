
REG_URL=https://www.iana.org/assignments/link-relations/link-relations

.PHONY: update
update: tmp.xml
	mv tmp.xml link-relations.xml

.PHONY: diff
diff: tmp.xml
	diff link-relations.xml tmp.xml

tmp.xml:
	curl -Ss -o tmp.xml $(REG_URL).xml

.PHONY: clean
clean:
	rm -rf tmp.xml

.PHONY: validate
validate:
	jing link-relations.rng link-relations.xml

.PHONY: update-rng
update-rng:
	curl -Ss -o link-relations.rng $(REG_URL).rng
	sed -i '' -e"s/..\/_support\///" link-relations.rng
	curl -Ss -o iana-registry.rng https://www.iana.org/assignments/_support/iana-registry.rng
