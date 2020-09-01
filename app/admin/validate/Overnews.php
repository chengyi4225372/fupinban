<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 11:01
 */
namespace app\admin\validate;

class Overnews extends AdminBase{

    //验证规则
    protected $rule =   [
        'cate_id'    =>'require',
        'type_id'     => 'require',
        'title'       => 'require',
        'content'     => 'require',
        'create_time' =>'require',
    ];

    // 验证提示
    protected $message  =   [
        'title.require'         => '请输入名称',
        'content.require'       => '请输入文章详情',
        'cate_id.require'      => '请选择综述管理分类',
        'type_id.require'       => '请选择文章分类',
        'create_time.require'   => '请输入创建时间',
    ];

    // 应用场景
    protected $scene = [
        'add'       => ['cate_id','type_id', 'title','content','create_time'],
        'edit'      => ['cate_id','type_id','area','title','content',],
    ];

}