<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 17:41
 */

namespace app\admin\logic;


class DeedsNews extends AdminBase{

    /**
     * 获取条件
     */
     public function getWhere($params=[]){
         $data =[];
         isset($params['search_data']) &&  $data['a.title'] = ['like','%'.$params['search_data'].'%'];
         return $data;
     }

     /**
      * 获取列表
      */
     public function getThisList($where=[],$field ='a.*,p.path'){
           $this->modelDeedsNews->alias('a');

           $join =[
               [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
           ];

           $where['a.status'] =1;

           $this->modelDeedsNews->join=$join;
           $order = ['a.sort'=>'desc','a.create_time'=>'desc'];
           return    $this->modelDeedsNews->getlist($where,$field,$order,15);
     }


     /**
      * 添加
      */
     public function setThisArr($params =[]){
         $params['create_time'] =time();
         $result = $this->validateDeedsNews->scene('add')->check($params);

         if(!$result){
             return [RESULT_ERROR,$this->validateDeedsNews->getError()];
         }

         $url = url('index');
         $type= isset($params['id'])?'编辑':'添加';
         $ret =  $this->modelDeedsNews->setInfo($params);
         $ret && action_log($type,'model deedsnews add where id='.$ret);
         return $ret ?[RESULT_SUCCESS,$type.'成功',$url]:[RESULT_ERROR, $this->modelDeedsNews->getError()];
     }

     /**
      * 编辑
      */
     public function updateThisArr($params=[]){

         $result = $this->validateDeedsNews->scene('edit')->check($params);

         if(!$result){
             return [RESULT_ERROR,$this->validateDeedsNews->getError()];
         }

         $url = url('index');
         $type= isset($params['id'])?'编辑':'添加';
         $ret =  $this->modelDeedsNews->setInfo($params);
         $ret && action_log($type,'model deedsnews edit where id='.$params['id']);
         return $ret ?[RESULT_SUCCESS,$type.'成功',$url]:[RESULT_ERROR, $this->modelDeedsNews->getError()];
     }


     /**
      * 删除
      */
     public function  delThisVal($id=''){
         if(empty($id) || !isset($id) || $id == ''){
             return [RESULT_ERROR,'缺少删除条件'];
         }

         $url = url('index');
         $ret =  $this->modelDeedsNews->setFieldValue(['id'=>$id],'status',0);
         $ret && action_log('删除','model deedsnews where id ='.$id);
         return $ret ?[RESULT_SUCCESS,'删除成功',$url]:[RESULT_ERROR, $this->modelDeedsNews->getError()];
     }

     /**
      * 获取详情
      */
     public function getThisVal($id =''){
         if(empty($id) || !isset($id) || $id == ''){
             return [RESULT_ERROR,'缺少查询条件'];
         }

         return $this->modelDeedsNews->getInfo(['id'=>$id]);
     }

}