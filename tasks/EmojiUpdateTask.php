<?php declare(strict_types=1);

namespace Jawira\EmojiTask;

use SplFileObject;

class EmojiUpdateTask extends AbstractEmojiTask
{
    function main()
    {
        $file = new SplFileObject('src/Emoji.php', 'w+');
        $file->fwrite(file_get_contents('resources/templates/emoji-header.php.dist'));
        foreach (file('resources/unicode/emoji-test.txt') as $line) {
            $matches = $this->extractParts($line);
            if (!is_array($matches)) {
                continue;
            }
            $emoji = $this->codepointsToEmoji($matches['CODEPOINTS']);
            $constantName = $this->normalizeEmojiName($matches['NAME']);
            $file->fwrite("const $constantName = '$emoji';" . PHP_EOL);
        }
        $file->fwrite(file_get_contents('resources/templates/emoji-footer.php.dist'));
    }

}
