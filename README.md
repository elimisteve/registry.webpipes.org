# WebPipe Registry

A registry published of [WebPipes](http://www.webpipes.org/).

## Introduction

WebPipes are expected to conform to the draft [WebPipe Specification](https://github.com/webpipes/spec).
This registry exists as place for developers to leverage published WebPipes and share their own with the community.

## API

### GET /blocks[.json]

Returns _all_ registered WebPipes.

##### Example

	curl -i -X GET http://registry.webpipes.org/blocks.json


* * *

### GET /blocks/:slug[.json]

Returns a single Block Definition.

##### Arguments
	
	'slug' : 'parse-markdown'
	
##### Example

	curl -i -X GET http://registry.webpipes.org/blocks/parse-markdown.json


* * *

### POST /blocks

Register a WebPipe.

##### Arguments
	
	'url' : http://block-endpoint

##### Example

	curl -i -X POST -d 'url=http://block-endpoint' http://registry.webpipes.org/blocks


* * *

## Issues

- No HTTP Method PUT - Should registries automatically poll? PUT might be nice for manual update of block definition.
- No HTTP Method DELETE - Developers ought to be able to remove their published WebPipes.
- Should the Block Definition include a key for which version of the specification is implemented?
- Keys are not protected. Need a way to prevent users from overwriting each other's plugins if that key-name already exists.
- How to handle name versus slug?
- Testing
