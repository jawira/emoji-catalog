Emoji catalog 📔
==============

Get access to +3000 emojis as class constants.

Features:

- 🍰 Really easy to use
- 🔓 Zero dependencies
- 🤩 A lot of emojis

[![Latest Stable Version](https://poser.pugx.org/jawira/emoji-catalog/v/stable)](https://packagist.org/packages/jawira/emoji-catalog)
![Emoji](https://img.shields.io/badge/Emoji-v12.0-%235354FE)
[![Total Downloads](https://poser.pugx.org/jawira/emoji-catalog/downloads)](https://packagist.org/packages/jawira/emoji-catalog)
[![License](https://poser.pugx.org/jawira/emoji-catalog/license)](https://packagist.org/packages/jawira/emoji-catalog)
[![composer.lock](https://poser.pugx.org/jawira/emoji-catalog/composerlock)](https://packagist.org/packages/jawira/emoji-catalog)
[![PDS Skeleton](https://img.shields.io/badge/pds-skeleton-blue.svg)](https://github.com/php-pds/skeleton)
[![Issues](https://img.shields.io/github/issues/jawira/emoji-catalog.svg?label=HuBoard&color=694DC2)](https://huboard.com/jawira/emoji-catalog)

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


***

My other packages
-----------------

<dl>

  <dt><a href="https://packagist.org/packages/jawira/case-converter">jawira/case-converter</a> (library)</dt>
  <dd>Convert strings between 13 naming conventions: Snake case, Camel case,
      Pascal case, Kebab case, Ada case, Train case, Cobol case, Macro case,
      Upper case, Lower case, Sentence case, Title case and Dot notation.
  </dd>

  <dt><a href="https://packagist.org/packages/jawira/phing-visualizer">jawira/phing-visualizer</a> (library)</dt>
  <dd>Graphical representation of Phing's buildfile.</dd>

  <dt><a href="https://packagist.org/packages/jawira/phing-open-task">jawira/phing-open-task</a> (library)</dt>
  <dd>Phing task to open files, directories, and URLs with your favorite software.</dd>

  <dt><a href="https://packagist.org/packages/jawira/plantuml">jawira/plantuml</a> (library)</dt>
  <dd>Provides PlantUML integration: plantuml executable and plantuml.jar</dd>

  <dt><a href="https://packagist.org/packages/jawira/plantuml-encoding">jawira/plantuml-encoding</a> (library)</dt>
  <dd>PlantUML encoding functions.</dd>

  <dt><a href="https://packagist.org/packages/jawira/process-maker">jawira/process-maker</a> (project)</dt>
  <dd>Easily install and try ProcessMaker using Docker Compose.</dd>

</dl>
