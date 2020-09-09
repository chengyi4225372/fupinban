<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/9
 * Time: 18:05
 */

namespace app\common\logic;

class DeedsNews extends  LogicBase{

    /**
     * 扶贫报道列表接口
     */
    public function getNewsList(){
        $this->modelDeedsNews->alias('a');

        $join = [
            [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
        ];

        $where =['a.status'=>1];
        $field = 'a.title.a.id,a.introduce,p.path';
        $order = ['a.sort'=>'desc','a.create_time'=>'desc'];
        $this->modelDeedsNews->join =$join;

        return  $this->modelDeedsNews->getList($where,$field,$order,false);
    }

    /**
     * 扶贫报道详情接口
     */
     public function getNewsInfo($id =''){

         if(empty($id) || is_null($id) || !isset($id)){
             return false;
         }

         return $this->modelDeedsNews->getInfo(['id'=>$id],'id,title,content');
     }


}