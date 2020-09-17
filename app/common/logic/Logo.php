<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/17
 * Time: 17:12
 */
namespace app\common\logic;

class Logo extends LogicBase{

    public function getlogoPath(){
        $this->modelLogo->alias('a');

        $join =[
            [SYS_DB_PREFIX . 'picture p', 'a.logo = p.id'],
        ];

        $this->modelLogo->join=$join;

        $info = $this->modelLogo->getInfo(null,$field='a.id,p.path');

        $info['path'] =config('Path.img').$info['path'];

        return $info;
    }

}