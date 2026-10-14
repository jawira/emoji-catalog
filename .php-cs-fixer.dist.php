<?php declare(strict_types=1);

use Jawira\AnnotationUpdater\AnnotationUpdater;
use PhpCsFixer\Config;
use PhpCsFixer\Finder;

$year = date('Y');
$rules = [
  AnnotationUpdater::NAME => [
    AnnotationUpdater::ANNOTATIONS => [
      ['tag' => 'author', 'value' => 'Jawira Portugal <dev@tugal.be>', 'mode' => 'preserve'],
      ['tag' => 'copyright', 'value' => "© 2019-$year Jawira Portugal", 'mode' => 'replace'],
    ],
  ],
];
$finder = Finder::create()->in([__DIR__ . '/src', __DIR__ . '/tests'])->name('*.php');


return (new Config())
  ->setHideProgress(true)
  ->setRiskyAllowed(true)
  ->setIndent('  ')
  ->setFinder($finder)
  ->registerCustomFixers([new AnnotationUpdater()])
  ->setRules($rules);
