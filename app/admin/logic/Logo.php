<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/17
 * Time: 16:58
 */
namespace app\admin\logic;

class Logo extends AdminBase{

    /**
     * 获取logo图片
     */
    public function getOneinfo(){
        return  $this->modelLogo->getInfo();
    }


    /**
     * 添加logo图片
     */
    public function setImgsInfo($param=[]){

        if (empty($param['logo'])|| !isset($param['logo'])) {
            return [RESULT_ERROR,'请上传图片'];
        }

        $url = url('index');
        $handle_text = isset($param['id']) ? '新增' : '编辑';
        $result = $this->modelLogo->setInfo($param);
        $result && action_log($handle_text, 'logo' .'上传图片 id='.$result);
        return $result ? [RESULT_SUCCESS, '上传成功', $url] : [RESULT_ERROR, $this->modelLogo->getError()];

    }


    /**
     * 编辑logo图片
     */
    public function setEditInfo($param=[]){
        if (empty($param['logo'])|| !isset($param['logo'])) {
            return [RESULT_ERROR,'请上传图片'];
        }

        if (empty($param['id'])|| !isset($param['id'])) {
            return [RESULT_ERROR,'主键不能为空'];
        }

        $url = url('index');
        $handle_text = isset($param['id']) ? '新增' : '编辑';
        $result = $this->modelLogo->setFieldValue(['id'=>$param['id']],'logo',$param['logo']);
        $result && action_log($handle_text, 'logo' .'上传图片 id='.$result);
        return $result ? [RESULT_SUCCESS, '上传图片成功', $url] : [RESULT_ERROR, $this->modelLogo->getError()];

    }
}