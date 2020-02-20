Emoji catalog 📔
==============

Get access to +3300 emojis as class constants.

Features:

- 🍰 Dead easy to use
- 🤩 A lot of emojis
- 🔓 Zero dependencies

You can see the [full emoji list].

[![Latest Stable Version](https://poser.pugx.org/jawira/emoji-catalog/v/stable)](https://packagist.org/packages/jawira/emoji-catalog)
[![Emoji version](https://img.shields.io/badge/Emoji-v13.0-%23ff69b4)](https://home.unicode.org/unicode-emoji-13-0-now-final-for-2020/)
[![Total Downloads](https://poser.pugx.org/jawira/emoji-catalog/downloads)](https://packagist.org/packages/jawira/emoji-catalog)
[![License](https://poser.pugx.org/jawira/emoji-catalog/license)](https://packagist.org/packages/jawira/emoji-catalog)
[![composer.lock](https://poser.pugx.org/jawira/emoji-catalog/composerlock)](https://packagist.org/packages/jawira/emoji-catalog)
[![PDS Skeleton](https://img.shields.io/badge/pds-skeleton-blue.svg)](https://github.com/php-pds/skeleton)
[![Issues](https://img.shields.io/github/issues/jawira/emoji-catalog.svg?label=HuBoard&color=694DC2)](https://huboard.com/jawira/emoji-catalog)
[![HitCount](http://hits.dwyl.io/jawira/emoji-catalog.svg)](http://hits.dwyl.io/jawira/emoji-catalog)

Usage
-----

You have access to emojis as `\Jawira\EmojiCatalog\Emoji` constants:

```php
<?php
use Jawira\EmojiCatalog\Emoji;

echo Emoji::GRINNING_FACE;  // 😀
echo Emoji::SOCCER_BALL;    // ⚽
echo Emoji::HOURGLASS_DONE; // ⌛
echo Emoji::EJECT_BUTTON;   // ⏏
```

Your favorite IDE should give you autocomplete since you are simply calling 
class constants:

![Autocomplete](docs/images/autocomplete.png)

How to install
--------------

```
$ composer require jawira/emoji-catalog
```

Contributing
------------

If you liked this project, ⭐ star it on [GitHub].

License
-------

This library is licensed under the [MIT license](LICENSE.md).

[GitHub]: https://github.com/jawira/emoji-catalog
[full emoji list]: https://github.com/jawira/emoji-catalog/blob/master/docs/catalog.md

***

Packages from jawira
--------------------

<dl>
  <dt><a href="https://packagist.org/packages/jawira/case-converter">jawira/case-converter</a> (library)</dt>
  <dd>Convert strings between 13 naming conventions: Snake case, Camel case,
      Pascal case, Kebab case, Ada case, Train case, Cobol case, Macro case,
      Upper case, Lower case, Sentence case, Title case and Dot notation.
  </dd>

  <dt><a href="https://packagist.org/packages/jawira/plantuml">jawira/plantuml</a> (library)</dt>
  <dd>Provides PlantUML integration: plantuml executable and plantuml.jar</dd>

  <dt><a href="https://packagist.org/packages/jawira/plantuml-encoding">jawira/plantuml-encoding</a> (library)</dt>
  <dd>PlantUML encoding functions.</dd>

  <dt><a href="https://packagist.org/packages/jawira/">more...</a></dt>
</dl>
