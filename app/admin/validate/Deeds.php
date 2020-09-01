<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/1
 * Time: 18:11
 */

namespace app\admin\validate;

class Deeds extends  AdminBase{
    //验证规则
    protected $rule =   [
        'imgs'      => 'require',
        'title'     => 'require',
        'create_time'=>'require',
    ];

    // 验证提示
    protected $message  =   [
        'imgs.require'          => '请上传图片',
        'title.require'         => '请输入分类名称',
        'create_time.require'   => '请输入创建时间',
    ];

    // 应用场景
    protected $scene = [
        'add'       => ['imgs','title','create_time'],
        'edit'      => ['imgs','title',],
    ];
}