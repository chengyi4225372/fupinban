<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 9:17
 */
namespace  app\admin\logic;


class Message extends  AdminBase{

    /**
     * 留言列表
     */
     public function getMsgList(){
         $where['a.status'] =1;
         $where['b.status'] =1;
         $this->modelMessage->alias('a');

         $join =[
             [SYS_DB_PREFIX . 'wx_user b','a.u_id = b.id','LEFT'],
         ];

         $order =['a.num'=>'desc','a.create_time'=>'desc'];
         $field = 'a.id,a.u_id,a.num,a.content,a.create_time,b.nickname';
         $this->modelMessage->join = $join;
         $list = $this->modelMessage->getList($where,$field,$order,20);

         return $list;
     }


     /**
      * 查看留言详情
      */
     public function getThisInfo($id = null){
         if($id == null || empty($id) || $id ==''){
             return [RESULT_ERROR,'查询条件不存在'];
         }

         $info = $this->modelMessage->getInfo(['id'=>$id]);

         $info['nickname'] = $this->modelWxUser->getValue(['id'=>$info['u_id']],'nickname');

         return $info;
     }

     /**
      * 删除
      */
     public function delThisMsg($id = null){
         if($id == null || empty($id) || $id ==''){
             return [RESULT_ERROR,'删除条件不存在'];
         }

         $url = url('getmsglist');
         $ret = $this->modelMessage->setFieldValue(['id'=>$id],'status',0);
         $ret && action_log('删除留言列表','model message where id ='.$id);
         return $ret?[RESULT_SUCCESS,'删除成功',$url]:[RESULT_ERROR,$this->modelMessage->getError()];

     }



}