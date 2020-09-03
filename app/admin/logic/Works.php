<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 9:57
 */

namespace app\admin\logic;


class Works extends AdminBase{

    /**
     * 获取条件
     */
    public function getWhere($params=[]){
        $data =[];
        isset($params['search_data']) && $data['a.title'] = ['like','%'.$params['search_data'].'%'];
        isset($params['cates_id'])   && $data['a.cates_id'] = intval($params['cates_id']);
        return $data;
    }

    /**
     * 列表页
     */
    public function getWorkList($where=[],$field='a.*,b.path'){
        $this->modelDeedsWorks->alias('a');

        $join =[
            [SYS_DB_PREFIX . 'file b','a.resources = b.id','LEFT'],
        ];

        $this->modelDeedsWorks->join=$join;
        $where['a.status'] =1;
        $order =['a.sort'=>'desc','a.create_time'=>'desc'];
        return $this->modelDeedsWorks->getList($where,$field,$order,20);
    }



    /**
     * 添加
     */
      public function setThisVal($params=[]){
          $params['create_time'] = time();
          $result = $this->validateDeedsWorks->scene('add')->check($params);

          if(!$result){
              return [RESULT_ERROR,$this->validateDeedsWorks->getError()];
          }

          $url = url('index');
          $type= isset($params['id'])?'编辑':'添加';
          $ret = $this->modelDeedsWorks->setInfo($params);
          $ret && action_log($type,'model deedsworks add where id='.$ret);
          return $ret ?[RESULT_SUCCESS,$type.'成功',$url]:[RESULT_ERROR,$this->modelDeedsWorks->getError()];
      }



     /**
      * 编辑
      */
      public function updateThisVal($params=[]){
          $result = $this->validateDeedsWorks->scene('add')->check($params);

          if(!$result){
              return [RESULT_ERROR,$this->validateDeedsWorks->getError()];
          }

          $url = url('index');
          $type= isset($params['id'])?'编辑':'添加';
          $ret = $this->modelDeedsWorks->setInfo($params);
          $ret && action_log($type,'model deedsworks edit where id='.$params['id']);
          return $ret ?[RESULT_SUCCESS,$type.'成功',$url]:[RESULT_ERROR,$this->modelDeedsWorks->getError()];
      }


      /**
       * 获取
       */
      public function getThisVal($id = null){
          if($id =='' || empty($id) || is_null($id)){
              return [RESULT_ERROR,'缺少查询条件'];
          }

          return  $this->modelDeedsWorks->getInfo(['id'=>$id]);
      }

      /**
       * 删除
       */
      public function  delThisVal($id =null){
          if($id =='' || empty($id) || is_null($id)){
              return [RESULT_ERROR,'缺少删除条件'];
          }

          $urls = url('index');
          $ret  = $this->modelDeedsWorks->setFieldValue(['id'=>$id],'status',0);
          $ret  && action_log('删除操作','model deedsworks delete where id='.$id);
          return $ret ?[RESULT_SUCCESS,'删除成功',$urls]:[RESULT_ERROR, $this->modelDeedsWorks->getError()];
     }


}