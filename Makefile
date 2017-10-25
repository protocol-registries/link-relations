
REG_URL=https://www.iana.org/assignments/link-relations/link-relations.xml

.PHONY: update
update: tmp.xml
	mv tmp.xml link-relations.xml

.PHONY: diff
diff: tmp.xml
	diff link-relations.xml tmp.xml

tmp.xml:
	curl -Ss -o tmp.xml $(REG_URL)

.PHONY: clean
clean:
	rm -rf tmp.xml
