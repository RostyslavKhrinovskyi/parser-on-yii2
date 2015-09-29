<?php

namespace frontend\models;

use Yii;
use yii\base\Exception;
use yii\helpers\ArrayHelper;


/**
 * This is the model class for table "history".
 *
 * @property integer $id
 * @property string $score
 * @property string $team
 * @property string $home
 * @property string $draw
 * @property string $away
 * @property string $hash
 * @property string $date
 */
class History extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'history';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date'], 'safe'],
            [['score', 'home', 'draw', 'away'], 'string', 'max' => 10],
            [['team'], 'string', 'max' => 50],
            [['hash'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'score' => 'Score',
            'team' => 'Team',
            'home' => 'Home',
            'draw' => 'Draw',
            'away' => 'Away',
            'hash' => 'Hash',
            'date' => 'Date',
        ];
    }

    public static function saveInHistory($dataLive)
    {
        try {
            $allHashesFromDb = ArrayHelper::map(self::find()->all(), 'id', 'hash');
            foreach ($dataLive as $item) {
                $hash = md5(serialize($item));
                if (!in_array($hash, $allHashesFromDb)) {
                    $model = new self();
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

            return true;

        } catch (Exception $e){
            echo $e->getMessage();
            return false;
        }
    }

    /**
     * return html with data
     * @param $data
     * @return string
     */
    public static function formatDataToHTML($data)
    {
        $html = '<table class="table">
        <thead>
            <th>Score</th>
            <th>Team</th>
            <th>home</th>
            <th>draw</th>
            <th>away</th>
        </thead>
        <tbody>';

         foreach($data as $item) {
           $html .=  '<tr>
                    <td>
                        ' . $item['score'] . '
                    </td>
                    <td>
                        ' . $item['team'] . '
                    </td>
                    <td>
                        ' . $item['home'] . '
                    </td>
                    <td>
                        ' . $item['draw'] . '
                    </td>
                    <td>
                        ' . $item['away'] . '
                    </td>
                </tr>';
         }

        $html .= '</tbody></table>';

        return $html;
    }
}
