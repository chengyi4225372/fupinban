<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 11:55
 */

namespace app\admin\logic;


/**
 * Class PrefaceImg
 * @package app\admin\logic
 * 前言 首页图片
 */
class PrefaceImg extends AdminBase{

    /**
     * 获取首页图片
     */
      public function getOneinfo(){

         $this->modelPrefaceImg->alias('a');

         $where = ['a.status'=>1,'p.status'=>1];
         $join =[
             [SYS_DB_PREFIX . 'picture p', 'a.imgs = p.id'],
         ];

         $this->modelPrefaceImg->join=$join;

         return  $this->modelPrefaceImg->getInfo($where,false);
      }


      /**
       * 添加首页图片
       */
      public function setImgsInfo($param=[]){

          $validate_result = $this->validatePrefaceImg->scene('add')->check($param);

          if (!$validate_result) {
              return [RESULT_ERROR, $this->validatePrefaceImg->getError()];
          }

          $url = url('getimg');

          $result = $this->modelPrefaceImg->setInfo(['imgs'=>$param['imgs']]);
          $handle_text = empty($param['id']) ? '新增' : '编辑';
          $result && action_log($handle_text, 'prefaceimg' .'上传图片 id='.$result);
          return $result ? [RESULT_SUCCESS, '上传成功', $url] : [RESULT_ERROR, $this->modelPrefaceImg->getError()];

      }


    /**
     * 编辑首页图片
     */
      public function setEditInfo($param=[]){

        $validate_result = $this->validatePrefaceImg->scene('edit')->check($param);

        if (!$validate_result) {

            return [RESULT_ERROR, $this->validatePrefaceImg->getError()];
        }

        $url = url('getimg');

        $result = $this->modelPrefaceImg->setFieldValue(['id'=>$param['id'],'imgs',$param['imgs']]);
        $handle_text = empty($param['id']) ? '新增' : '编辑';
        $result && action_log($handle_text, 'prefaceimg' .'上传图片 id='.$result);
        return $result ? [RESULT_SUCCESS, '上传图片成功', $url] : [RESULT_ERROR, $this->modelPrefaceImg->getError()];

    }

}