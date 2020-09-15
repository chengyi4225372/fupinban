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
     * 扶贫日志列表接口
     */
    public function getApiNewsList(){

        $where =['status'=>1];
        $field = 'id,title,introduce';
        $order = ['sort'=>'desc','create_time'=>'desc'];
        $list  = $this->modelDeedsNews->getList($where,$field,$order,false);
        return $list;
    }

    /**
     * 扶贫日志详情接口
     */
     public function getNewsInfo($id =''){

         if(empty($id) || is_null($id) || !isset($id)){
             return false;
         }

         return $this->modelDeedsNews->getInfo(['id'=>$id],'id,title,content');
     }




}