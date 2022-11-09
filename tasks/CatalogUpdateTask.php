<?php declare(strict_types=1);

namespace Jawira\EmojiTask;

use SplFileObject;

class CatalogUpdateTask extends AbstractEmojiTask
{
    function main()
    {
        $file = new SplFileObject('docs/catalog.md', 'w+');
        $file->fwrite(file_get_contents('resources/templates/catalog-header.md.dist'));
        foreach (file('resources/unicode/emoji-test.txt') as $line) {
            $matches = $this->extractParts($line);
            if (!is_array($matches)) {
                continue;
            }
            $emoji = $this->codepointsToEmoji($matches['CODEPOINTS']);
            $constantName = $this->normalizeEmojiName($matches['NAME']);
            $file->fwrite(sprintf("| %s | %s | %s | %s |%s", $matches['NAME'], $emoji, trim($matches['CODEPOINTS']), $constantName, PHP_EOL));
        }
    }
}
