<?php
/**
 * Created by PhpStorm.
 * User: rostislav
 * Date: 28.09.15
 * Time: 20:24
 */

namespace common\services;
use GuzzleHttp;


class Client {

    protected static $options = [
        'allow_redirects' => true,
        'headers' => [
            'User-Agent' => 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20110814 Firefox/6.0',
            'Accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
            'Accept-Encoding' => 'identity',
        ]
    ];

    /**
     * get content from site
     * @param $url
     * @return string
     */
    public static function getContent($url)
    {
        $client = new GuzzleHttp\Client();
        $response = $client->get(($url), self::$options);

        return $response->getBody()->getContents();
    }

}