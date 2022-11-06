<?php declare(strict_types=1);

use Jawira\EmojiCatalog\Emoji;

/**
 * Simply test if some Emojis are respected.
 *
 * Since Emojis can have different names between versions, update tests accordingly.
 */
function vanilla()
{
    $provider = [
        'E0.6' => [Emoji::VICTORY_HAND, "\u{270C}\u{FE0F}"],
        'E0.7' => [Emoji::MOUNTAIN, "\u{26F0}\u{FE0F}"],
        'E1.0' => [Emoji::GRINNING_FACE, "\u{1F600}"],
        'E2.0' => [Emoji::FLAG_EUROPEAN_UNION, "\u{1F1EA}\u{1F1FA}"],
        'E3.0' => [Emoji::CALL_ME_HAND, "\u{1F919}"],
        'E4.0' => [Emoji::FLAG_UNITED_NATIONS, "\u{1F1FA}\u{1F1F3}"],
        'E13.1' => [Emoji::HEART_ON_FIRE, "\u{2764}\u{FE0F}\u{200D}\u{1F525}"],
        'E15.0' => [Emoji::PINK_HEART, "\u{1FA77}"],
    ];

    foreach ($provider as $key => $testCase) {
        if ($testCase[0] !== $testCase[1]) {
            throw new Exception("Test '$key' failed!");
        }
        echo $testCase[0];
    }
    $count = count($provider);
    echo PHP_EOL, "All $count tests ok!", PHP_EOL;
}

