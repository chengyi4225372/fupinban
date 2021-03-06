<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/2
 * Time: 16:56
 */
namespace app\admin\validate;


class DeedsLog extends  AdminBase{
    // 验证规则
    protected $rule =   [
        'content'         => 'require',
        'create_time'     => 'require',
    ];

    // 验证提示
    protected $message  =   [
        'title.require'            => '请输入文章标题',
        'create_time.require'      => '无法获取创建时间',
    ];

    // 应用场景
    protected $scene = [
        'add'       =>  ['content','create_time',],
        'edit'      =>  ['content',],
    ];



}