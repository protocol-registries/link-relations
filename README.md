# Link Relation Type Registration Requests

This repository's issues list manages requests to add and change entries in the [link relation type IANA registry](https://www.iana.org/assignments/link-relations/). Please note our [contribution terms](.github/CONTRIBUTING.md).

Your [Experts](https://tools.ietf.org/html/rfc8126#section-4.6) are currently [@algermissen](https://github.com/algermissen), [@mnot](https://github.com/mnot), and [@reschke](https://github.com/reschke).

To request registration of a new relation type (or a change to an existing one), you can:

* [File an issue](https://github.com/protocol-registries/link-relations/issues/new) (preferred), or
* Send e-mail to [the link-relations mailing list](https://www.ietf.org/mailman/listinfo/link-relations).

See [RFC8288](https://tools.ietf.org/html/rfc8288) for more information about link relations; in particular, the [requirements for registered relation types](https://tools.ietf.org/html/rfc8288#registered). Note that a [specification is required](https://tools.ietf.org/html/rfc8126#section-4.6).

Once approved, your request will be incorporated into the IANA registry, whereupon it will be officially registered.

## Describing Link Relations

There are many ways to fill out the `description` field, but in general it's good if it aligns with the terminology in [RFC8288](https://tools.ietf.org/html/rfc8288). Some examples:

* Refers to a resource that can be used to `verb` the link's context.
* The target IRI points to a resource where a `descriptor` resource for the link context can be obtained.
* Refers to a resource providing `descriptor` about the link's context.
