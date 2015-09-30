<?php
namespace frontend\controllers;

use common\services\Client;
use common\services\Parser;
use frontend\models\History;
use Yii;
use yii\web\Controller;


/**
 * Site controller
 */
class SiteController extends Controller
{


    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ]
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $dataHistory = History::find()
                            ->orderBy('date DESC')
                            ->limit(15)
                            ->all();

        return $this->render('index', [
            'dataHistory' => $dataHistory
        ]);
    }

    public function actionDataHistory()
    {
        if (Yii::$app->request->isAjax) {

            $serviceClient = new Client();
            $response = $serviceClient->getContent('http://sports.williamhill.com/bet/en-gb/betting/y/5/tm/Football.html');

            $parser = new Parser();
            $dataLive = $parser->run($response);

            if (!History::saveInHistory($dataLive)) {
                $dataHistory = [];
            } else {
                $dataHistory = History::find()
                    ->orderBy('date DESC')
                    ->limit(15)
                    ->all();
            }

            echo $this->renderPartial('table' , [
                'dataHistory' => $dataHistory
            ]);

            exit();

        }
    }





}
