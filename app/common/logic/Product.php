<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/7
 * Time: 17:29
 */

namespace app\common\logic;

class Product extends LogicBase{

    /**
     * 获取项目精选列表 接口
     */
    public function getProductList(){

        $where['status']=1;
        $order =['sort'=>'desc','create_time'=>'desc'];
        return $this->modelProduct->getList($where,false,$order,false);
    }


    /**
     * 获取项目详情
     */
    public function seeThisContent($id = null){
        if(empty($id) || $id <=0 || is_null($id)){
            return false;
        }

        return $this->modelProduct->getInfo(['id'=>$id,'status'=>1]);

    }
}