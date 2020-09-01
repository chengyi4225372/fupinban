<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/31
 * Time: 16:37
 */

namespace app\admin\validate;


class MessageContent extends  AdminBase{

    // 验证规则
    protected $rule =   [
        'content'      => 'require',
    ];

    // 验证提示
    protected $message  =   [
        'content.require' => '文章内容不能为空',
    ];

    // 应用场景
    protected $scene = [
        'add'       => ['content'],
        'edit'      => ['content'],
    ];

}