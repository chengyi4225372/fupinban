<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 15:39
 */

namespace app\admin\logic;

class GloryCates extends  AdminBase{

    /**
     * 获取条件
     */
    public  function  getWhere($params=[]){
        $data =[];
        isset($params['search_data']) && $data['a.title'] = ['like','%'.trim($params['search_data']).'%'];
        return $data;
    }

    /**
     * 列表
     */
    public function getThisList($where=[],$field='a.*,p.path'){
             $this->modelGloryCates->alias('a');

             $join=[
                 [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
             ];
             $order=['a.sort'=>'desc','create_time'=>'desc'];
             $this->modelGloryCates->join=$join;
             return   $this->modelGloryCates->getList($where,$field,$order,10);
    }



    /**
     * 添加
     */
    public function setThisVal($params =[]){
         if(is_null($params['title']) || empty($params['title'])){
             return [RESULT_ERROR,'标题不能为空'];
         }

         if(is_null($params['imgs']) || empty($params['imgs'])){
            return [RESULT_ERROR,'请上传分类展示图'];
         }

         $params['create_time'] =time();

         $urls = url('cates');
         $type = isset($params['id'])?'编辑':'添加';
         $ret  = $this->modelGloryCates->setInfo($params);
         $ret && action_log($type,'model glorycates add where id='.$ret);
         return $ret ?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR,$this->modelGloryCates->getError()];

    }

    /**
     * 编辑
     */
     public function updateThisVal($params=[]){
         if(is_null($params['title']) || empty($params['title'])){
             return [RESULT_ERROR,'标题不能为空'];
         }

         if(is_null($params['imgs']) || empty($params['imgs'])){
             return [RESULT_ERROR,'请上传分类展示图'];
         }

         $urls = url('cates');
         $type = isset($params['id'])?'编辑':'添加';
         $ret  = $this->modelGloryCates->setInfo($params);
         $ret && action_log($type,'model glorycates edit where id='.$params['id']);
         return $ret ?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR,$this->modelGloryCates->getError()];

     }

     /**
      * 获取详情
      */
      public function getThisVal($id = null){
           if($id == '' || empty($id) || is_null($id)){
               return [RESULT_ERROR,'缺少查询条件'];
           }

           return  $this->modelGloryCates->getInfo(['id'=>$id]);
      }

}