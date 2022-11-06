<?php declare(strict_types=1);

namespace Jawira\EmojiTask;

abstract class AbstractEmojiTask extends \Phing\Task
{
    function codepointsToEmoji(string $codepoints): string
    {
        $codepointsArray = array_filter(explode(' ', $codepoints));
        $reducer = function (string $carry, string $codepoint) {
            return $carry . mb_chr(hexdec($codepoint), 'UTF-8');
        };
        return array_reduce($codepointsArray, $reducer, '');
    }

    function extractParts(string $line): ?array
    {
        preg_match('@^(?<CODEPOINTS>[0-9A-H\s]+); fully-qualified\s+#\s\S+\sE\d*\.\d*\s(?<NAME>.+)@', $line, $matches);
        return empty($matches) ? null : $matches;
    }

    function normalizeEmojiName(string $emojiName): string
    {
        $rules = "'*' > asterisk ; '#' > number ; :: Any-Latin; :: NFD; :: [:Nonspacing Mark:] Remove; :: NFC; :: [^-[:^Punctuation:]] Remove; :: Upper(); [:^L:] { [-] > ; [-] } [:^L:] > ; [-[:Separator:]]+ > '_'; 1ST > FIRST ; 2ND > SECOND ; 3RD > THIRD ; ";
        return \Transliterator::createFromRules($rules)->transliterate($emojiName);
    }
}
