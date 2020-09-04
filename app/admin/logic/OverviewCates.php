<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 17:07
 */

namespace app\admin\logic;

class OverviewCates extends  AdminBase{


    /**
     * 获取查询条件
     */
    public function  getwhere($params =[]){
        $data = [];
        isset($params['search_data']) &&  $data['a.title'] = ['like','%'.$params['search_data'].'%'];
        return $data;
    }



   /**
    * 分类列表
    */
    public function getThisList($where=[],$field ='a.*,p.path'){
        $this->modelOverviewCates->alias('a');
        $join =[
            [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
        ];
        $where['a.status'] =1;

        $this->modelOverviewCates->join=$join;
        return $this->modelOverviewCates->getList($where,$field,['sort'=>'desc'],15);
    }


    /**
     * 添加
     */
    public function setThisInfo($params = []){
         $params['create_time'] = time();
         $result = $this->validateOverviewCates->scene('add')->check($params);

         if(!$result){
             return [RESULT_ERROR,$this->validateOverviewCates->getError()];
         }

         $params['create_time'] = time();
         $urls = url('cates');
         $types= isset($params['id'])?'编辑':'添加';
         $ret  =  $this->modelOverviewCates->setInfo($params);
         $ret && action_log($types,'model overviewCates 添加数据 where id ='.$ret);

         return $ret ?[RESULT_SUCCESS,'操作成功',$urls]:[RESULT_ERROR,$this->modelOverviewCates->getError()];
    }

    /**
     * 编辑
     */
    public function updateThisInfo($params =[]){
        $result = $this->validateOverviewCates->scene('edit')->check($params);

        if(!$result){
            return [RESULT_ERROR,$this->validateOverviewCates->getError()];
        }

        $urls = url('cates');
        $types= isset($params['id'])?'编辑':'添加';
        $ret  =  $this->modelOverviewCates->setInfo($params);
        $ret && action_log($types,'model overviewCates 更新数据 where id ='.$params['id']);

        return $ret ?[RESULT_SUCCESS,'操作成功',$urls]:[RESULT_ERROR,$this->modelOverviewCates->getError()];
    }

    /**
     * 获取详情
     */
     public  function getThisInfo($params =[]){
           if(empty($params['id']) || !isset($params['id'])){
               return [RESULT_ERROR,'查询条件不能为空'];
           }

           return $this->modelOverviewCates->getInfo(['id'=>$params['id']]);
     }

     /**
      * 删除
      */
     public function delThisVal($params=[]){

         $urls = url('cates');
         $ret  = $this->modelOverviewCates->setFieldValue(['id'=>$params['id'],'status',0]);
         $ret && action_log('删除','model overviewcates where id = '.$params['id']);

         return $ret ?[RESULT_SUCCESS,'删除成功',$urls]:[RESULT_ERROR, $this->modelOverviewCates->getError()];
     }
}