<?php

namespace common\services;

use Symfony\Component\DomCrawler\Crawler;


class Parser {
    /**
     * xPath param for find in content site
     * @var string
     */
    protected static $xPathBase = '//*[@class="rowLive"]';

    /**
     * array with params for find in content site
     * @var array
     */
    protected static $xPathInfo = [
        'score' => '//td[2]/a',
        'team' => '//td[3]/a',
        'home' => '//td[5]/div/div',
        'draw' => '//td[6]/div/div',
        'away' => '//td[7]/div/div',
    ];


    /**
     * find needed information in site and save in array
     * @param $content
     * @return array|Crawler
     */
    public function run($content)
    {
        $crawler = new Crawler($content);

        $crawler = $crawler->filterXPath(self::$xPathBase)->each(function (Crawler $node, $i){
                foreach (self::$xPathInfo as $key => $value) {
                    $data[$key] = trim($node->filterXPath($value)->text());
                }
           return $data;

        });

        return $crawler;
    }

}