<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 14:40
 */

namespace app\admin\logic;


class GloryPerson extends  AdminBase{


      /**
       * 获取条件
       */
       public function getWhere($params=[]){
            $data =[];
            isset($params['search_data']) && $data['a.users'] =['like','%'.$params['search_data'].'%'];
            isset($params['address']) && $data['a.address'] =['like','%'.$params['address'].'%'];
            return $data;
       }


       /**
        * 根据条件查询列表
        */
       public function getThisList($where=[],$field='a.*,p.path'){
             $this->modelGloryPerson->alias('a');

             $join =[
                 [SYS_DB_PREFIX . 'picture p','a.user_img = p.id','LEFT'],
             ];

             $order =['a.sort'=>'desc','a.create_time'=>'desc'];
             $where['a.status'] =1;
             $this->modelGloryPerson->join=$join;

             return $this->modelGloryPerson->getList($where,$field,$order,15);
       }

       /**
        * 添加
        */
       public function setThisVal($params=[]){
           $params['create_time'] = time();

           $result = $this->validateGloryPerson->scene('add')->check($params);

           if(!$result){
             return  [RESULT_ERROR,$this->validateGloryPerson->getError()];
           }

           $urls = url('index');
           $type = isset($params['id'])?'编辑':'添加';
           $ret  = $this->modelGloryPerson->setInfo($params);
           $ret  && action_log($type,'model gloryperson add where id ='.$ret);
           return $ret ?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR, $this->modelGloryPerson->getError()];

       }

       /**
        * 编辑
        */
       public function updateThisVal($params=[]){
           $result = $this->validateGloryPerson->scene('edit')->check($params);

           if(!$result){
               return  [RESULT_ERROR,$this->validateGloryPerson->getError()];
           }

           $urls = url('index');
           $type = isset($params['id'])?'编辑':'添加';
           $ret  = $this->modelGloryPerson->setInfo($params);
           $ret  && action_log($type,'model gloryperson edit where id ='.$params['id']);
           return $ret ?[RESULT_SUCCESS,$type.'成功',$urls]:[RESULT_ERROR, $this->modelGloryPerson->getError()];
       }

      /**
       * 获取详情
       */
       public function getThisInfo($id = null){

            if($id =='' || empty($id) || is_null($id)){
                return [RESULT_ERROR,'缺少查询条件'];
            }

            return $this->modelGloryPerson->getInfo(['id'=>$id]);
       }

       /**
        * 删除
        */
       public function delThisVal($id = null){
           if($id =='' || empty($id) || is_null($id)){
               return [RESULT_ERROR,'缺少删除条件'];
           }

           $urls = url('index');
           $ret  = $this->modelGloryPerson->setFieldValue(['id'=>$id],'status',0);
           $ret && action_log('删除','model gloryperson delete where id='.$id);
           return $ret ?[RESULT_SUCCESS,'删除成功',$urls]:[RESULT_ERROR,$this->modelGloryPerson->getError()];
       }

}