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

        $this->modelProduct->alias('a');


        $join =[

            [SYS_DB_PREFIX . 'picture p','a.p_imgs = p.id','LEFT'],
        ];


        $where['a.status']=1;
        $order =['a.sort'=>'desc','a.create_time'=>'desc'];
        $field = 'a.id,a.area,a.sort,p.path';

        $this->modelProduct->join=$join;

        $list = $this->modelProduct->getList($where,$field,$order,false);

        foreach($list as $k=>$val){
            $list[$k]['path'] =config('Path.img').$list[$k]['path'];
        }

        return $list;
    }


    /**
     * 获取项目详情
     */
    public function getThisApiVal($id = null){
        if(empty($id) || $id <=0 || is_null($id)){
            return false;
        }

        $field ='id,title,content';
        $info = $this->modelProduct->getInfo(['id'=>$id,'status'=>1],$field);
        $info['content'] = imageUrl($info['content']);
        $info['title']   = html_entity_decode($info['title']);

        return $info;

    }
}