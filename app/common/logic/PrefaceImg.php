<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 14:06
 */

namespace app\common\logic;


class PrefaceImg extends  LogicBase{

    /**
     * 获取前言页面接口
     *
     */
    public function getPrefaceImgOne(){

        $this->modelPrefaceImg->alias('a');

        $where = ['a.status'=>1,'p.status'=>1];
        $join =[
            [SYS_DB_PREFIX . 'picture p', 'a.imgs = p.id'],
        ];

        $this->modelPrefaceImg->join=$join;

        $info = $this->modelPrefaceImg->getInfo($where,$field='a.id,p.path');

        $info['path'] =config('Path.img').$info['path'];

        return $info;
    }
}