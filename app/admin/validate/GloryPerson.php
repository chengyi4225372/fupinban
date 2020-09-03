<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/3
 * Time: 15:02
 */

namespace app\admin\validate;


class GloryPerson extends AdminBase{
    //验证规则
    protected $rule =   [
        'users'         => 'require',
        'user_img'      => 'require',
        'content'       => 'require',
        'create_time'   => 'require',
        'address'       => 'require',
    ];

    // 验证提示
    protected $message  =   [
        'users.require'         => '请输入个人姓名',
        'create_time.require'   => '请输入创建时间',
        'content.require'       => '请输入个人简介',
        'user_img.require'      => '请上传个人介绍图',
        'address.require'       => '请输入个人住址',
    ];

    // 应用场景
    protected $scene = [
        'add'       => ['user_img','users','create_time','content','address'],
        'edit'      => ['user_img','users','content','address'],
    ];


}