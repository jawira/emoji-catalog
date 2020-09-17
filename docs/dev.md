Dev notes
=========

Update emoji class
------------------

1. Run `$ phing setup update qa` and see if you had new emojis (you can also use 
`$ phing emoji:count` before and after update)
2. Be aware that emojis can change its name without reason (ex: DIRECT_HIT → 
BULLSEYE). This forces me to publish a major version 👎.
3. Update Readme: badges, emoji count, ...
4. Update CHANGELOG.md

Cleaning Emoji.php
------------------

Emoji.php is generated with descriptive comments for each constant.
The comments are striped later to [avoid impacting OP_CACHE in production
environments][issue-8].

[issue-8]: https://github.com/jawira/emoji-catalog/issues/8
