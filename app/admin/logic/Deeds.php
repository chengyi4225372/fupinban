<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 17:35
 */

namespace app\admin\logic;

class Deeds extends AdminBase{

    /**
     * 获取查询条件
     */
    public function  getwhere($params =[]){
        $data = [];
        isset($params['search_data']) &&  $data['a.title'] = ['like','%'.$params['search_data'].'%'];
        return $data;
    }


    /**
     * 列表
     */
    public function getThisList($where=[],$field='a.*,p.path'){
        $this->modelDeedsCates->alias('a');
        $join =[
            [SYS_DB_PREFIX . 'picture p','a.imgs = p.id','LEFT'],
        ];
        $where['a.status'] =1;

        $this->modelDeedsCates->join=$join;
        return $this->modelDeedsCates->getList($where,$field,['sort'=>'desc'],15);
    }


    /**
     * 添加
     */
    public function setThisArr($params =[]){
        $params['create_time'] =time();
        $result = $this->validateDeeds->scene('add')->check($params);

        if(!$result){
            return [RESULT_ERROR,$this->validateDeeds->getError()];
        }

        $urls = url('getlist');
        $type = isset($params['id'])?'编辑':'添加';
        $ret  = $this->modelDeedsCates->setInfo($params);
        $ret && action_log($type,'model deedscates where id='.$ret);
        return $ret ?[RESULT_SUCCESS,'操作成功',$urls]:[RESULT_ERROR,$this->modelDeedsCates->getError()];

    }

    /**
     * 编辑
     */
    public function updateThisArr($params=[]){
        $result = $this->validateDeeds->scene('edit')->check($params);

        if(!$result){
            return [RESULT_ERROR,$this->validateDeeds->getError()];
        }

        $urls = url('getlist');
        $type = isset($params['id'])?'编辑':'添加';
        $ret  = $this->modelDeedsCates->setInfo($params);
        $ret && action_log($type,'model deedscates where id='.$params['id']);
        return $ret ?[RESULT_SUCCESS,'操作成功',$urls]:[RESULT_ERROR,$this->modelDeedsCates->getError()];
    }

    /**
     * 删除
     */
    public function delThisVal($id =''){
        if(empty($id) ||!isset($id)){
            return [RESULT_ERROR,'缺少查询条件'];
        }

        $url = url('getlist');
        $ret = $this->modelDeedsCates->setFieldValue(['id'=>$id],'status',0);
        $ret && action_log('删除','model deedscates where id='.$id);
        return $ret ?[RESULT_SUCCESS,'删除成功',$url]:[RESULT_ERROR,$this->modelDeedsCates->getError()];
    }

    /**
     * 获取详情
     */
    public function  getThisInfo($id=''){
        if(empty($id) ||!isset($id)){
            return [RESULT_ERROR,'缺少查询条件'];
        }
        return $this->modelDeedsCates->getInfo(['id'=>$id]);
    }


}