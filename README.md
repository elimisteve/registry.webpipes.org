# WebPipe Registry

A registry of published [WebPipes](http://www.webpipes.org/).

## Introduction

This registry exists as place for developers to leverage WebPipes and share their own with the community. All registered WebPipes are required to conform to the [WebPipe Specification](https://github.com/webpipes/spec).

## API

### GET /blocks[.json]

Returns _all_ registered WebPipes.

##### Example

	curl -i -X GET http://registry.webpipes.org/blocks.json


* * *

### GET /blocks/:slug[.json]

Returns a single Block Definition.

##### Arguments

<table>
	<tr>
		<th>Parameter Name</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>slug</td>
		<td>A slug for a Block</td>
	</tr>
</table>
	
##### Example

	curl -i -X GET http://registry.webpipes.org/blocks/parse-markdown.json


* * *

### POST /blocks

Register a WebPipe.

##### Arguments

<table>
	<tr>
		<th>Parameter Name</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>url</td>
		<td>An URL to a Block Definition</td>
	</tr>
</table>
	
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

