<?php

namespace console\controllers;

use frontend\models\History;
use yii\console\Controller;
use common\services\Client;
use common\services\Parser;
use yii\helpers\ArrayHelper;

/**
 * Test controller
 */
class CronController extends Controller {

    public function actionIndex()
    {
        $serviceClient = new Client();
        $response = $serviceClient->getContent('http://sports.williamhill.com/bet/en-gb/betting/y/5/tm/Football.html');

        $parser = new Parser();
        $dataLive = $parser->run($response);

        $allHashesFromDb = ArrayHelper::map(History::find()->all(), 'id' , 'hash');

        foreach($dataLive as $item) {
            $hash = md5(serialize($item));
            if (!in_array($hash, $allHashesFromDb)) {
                $model = new History();
                $model->score = $item['score'];
                $model->team = $item['team'];
                $model->home = $item['home'];
                $model->draw = $item['draw'];
                $model->away = $item['away'];
                $model->hash = $hash;
                $model->date = date("Y-m-d H:i:s");
                $model->save(false);
            }
        }
    }


}