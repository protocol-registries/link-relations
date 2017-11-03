These are notes for the expert(s) to help in running the registry.

## Adding or Modifying a Registry Entry

Before making any changes to the repository, always run:

> make update

to update the XML from IANA; if any changes are present (run `git status` or `git diff`), 
you will need to `git commit` and `git push` the changes to the repo.

After making your change, run:

> make validate

to make sure that the RNG validates (requires [jing](http://www.thaiopensource.com/relaxng/jing.html)).

Then `git commit`, `git push` and notify the appropriate issue and/or IANA as appropriate.

## XML Conventions

There are three conventions for references:

1) For RFCs: `<xref type="rfc" data="rfc8288"/>`
2) For I-Ds: `<xref type="draft" data="draft-foo-bar"/>`
3) If an I-D had been approved as an RFC, but not published yet: `<xref type="draft" data="RFC-foo-bar"/>`

