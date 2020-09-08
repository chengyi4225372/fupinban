<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/8
 * Time: 9:14
 */

namespace app\common\logic;



class  DeedsCates extends LogicBase{

    /**
     * @return mixed
     * 事迹风采 分类设置
     */
    public function getThislist(){
        $this->modelDeedsCates->alias('a');
        $join =[
            [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
        ];
        $where['a.status'] =1;
        $order = ['a.sort'=>'desc','a.id'=>'desc'];
        $field = 'a.id,a.title,a.sort,p.path';
        $this->modelDeedsCates->join=$join;

        return $this->modelDeedsCates->getList($where,$field,$order,false);
    }




}