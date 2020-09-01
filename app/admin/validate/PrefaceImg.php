<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 11:59
 */

namespace app\admin\validate;


class PrefaceImg extends AdminBase{

    // 验证规则
    protected $rule =   [
        'id'        => 'require',
        'imgs'      => 'require',
    ];

    // 验证提示
    protected $message  =   [
        'imgs.require'          => '请上传图片',
    ];

    // 应用场景
    protected $scene = [
        'add'       => 'imgs',
        'edit'      => 'imgs',
    ];


}