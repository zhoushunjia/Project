#1.商品类别表 wk_category_info
#id(主键) category_id(商品分类id) parent_id(父类id，默认为0) category_name(商品类别名称) is_enable(是否可用) created_date(创建时间) update_dated(修改时间)

#2.商品信息表 wk_product_info
#product_id(商品id) product_name(商品名称) description(商品描述) category_id(商品类别id) paramter_attr商品属性 paramter_json商品参数 status(上架状态) is_enable(是否可用) created_date(创建时间) update_dated(修改时间)

#3.商品价格表 wk_product_detail_info
#id product_id(商品id) 商品库存stock_num 商品价格price 商品颜色colour 商品尺寸dimens is_enable(是否可用) created_date创建时间 update_dated

#4.文件表 wk_upload_file
#id 文件类型 文件路径 文件大小 文件md5 created_date(创建时间) update_dated(修改时间)	

#5.商品图片关联信息表 wk_product_picture
#id product_id(商品id) 文件id(fid) created_date(创建时间) update_dated(修改时间)

#6.用户表 wb_user_detail_info
#id we_chat_id(微信id) we_chat_no(微信号) phone_no(手机号码) created_date(创建时间) update_dated(修改时间)

#7.用户地址管理表 wb_user_address_detail
#id we_chat_id(微信id) province_id(省份id) city_id(城市id) area_id(区域id) address(收货地址) user_name(收货人名称) phone_no(收货人号码) created_date创建时间 update_dated (创建时间)

#8.用户订单明细表 wb_user_order_detail
#id order_no(订单号) we_chat_id(微信id) product_id(商品id) order_money(订单价格) order_num(订单数量) order_status(订单状态) is_enable(是否可用) update_dated(创建时间)


#创建sql
#1.商品类别表
create table wk_category_info (
  `id` int(10) unsigned not null auto_increment comment '主键id',
  `category_id` varchar(100) not null comment '商品类别id',
  `parent_id` varchar(100) default null comment '所属分类',
  `category_name` int(10) not null comment '商品类别名称',
  `status` tinyint(4) default '1' comment '状态',
  `sort` int(10) default '0' comment '排序',
  `is_enable` tinyint(2) default '1' comment '是否可用',
  `creator` int(10) default null comment '创建人id',
  `created_date` datetime default current_timestamp comment '创建时间',
  `modifier` int(10) default null comment '最后更新人员id',
  `last_updated_date` datetime default current_timestamp comment '修改时间',
  primary key (`id`),
  key `idx_category_name` (category_name),
  key `idx_category_id` (category_id)
) engine=innodb auto_increment=1 default charset=utf8 comment='商品类别表';


#2.商品信息表
create table wk_product_info (
  `product_id` int(10) unsigned not null auto_increment comment '主键id',
  `product_name` varchar(100) not null comment '商品名称',
  `description` varchar(100) default null comment '商品描述',
  `category_id` varchar(100) not null comment '商品类别id',
  `paramter_attr` varchar(4) default null comment '商品属性',
  `paramter_json` varchar(4) default null comment '商品参数',
  `status` tinyint(2) default '1' comment '上架状态',
  `is_enable` tinyint(2) default '1' comment '是否可用',
  `creator` int(10) default null comment '创建人id',
  `created_date` datetime default current_timestamp comment '创建时间',
  `modifier` int(10) default null comment '最后更新人员id',
  `last_updated_date` datetime default current_timestamp comment '修改时间',
  primary key (`product_id`),
  key `idx_product_name` (`product_name`),
  key `idx_category_id` (`category_id`)
) engine=innodb auto_increment=1 default charset=utf8 comment='商品类别表';

#3.商品价格表 wk_product_detail_info
create table wk_product_detail_info (
  `id` int(10) unsigned not null auto_increment comment '主键id',
  `product_id` varchar(100) not null comment '商品id',
  `stock_num` int(10) default null comment '商品库存',
  `price` decimal(12,5) not null comment '商品价格',
  `colour` varchar(100) default null comment '商品颜色',
  `dimens` varchar(100) default null comment '商品尺寸',
  `is_enable` tinyint(2) default null comment '是否可用',
  `creator` int(10) default null comment '创建人id',
  `created_date` datetime default current_timestamp comment '创建时间',
  `modifier` int(10) default null comment '最后更新人员id',
  `last_updated_date` datetime default current_timestamp comment '修改时间',
  primary key (`id`),
  key `idx_product_id` (product_id)
) engine=innodb auto_increment=1 default charset=utf8 comment='商品价格表';

#4.文件表 wk_upload_file
create table `wk_upload_file` (
  `id` int(10) unsigned not null auto_increment comment 'id',
  `file_uid` varchar(64) not null comment '文件uuid',
  `user_id` int(10) unsigned not null comment '用户id',
  `file_type` varchar(11) not null comment '文件类型1-身份证正面',
  `file_path` varchar(255) default null comment '文件路径',
  `upload_time` datetime not null comment '上传时间',
  `creator` int(10) unsigned default null comment '创建人',
  `project` varchar(25) not null default '1' comment '所属项目值',
  `is_enable` tinyint(4) not null default '1' comment '是否可用',
  primary key (`id`),
  unique key `uk_file_uid` (`file_uid`),
  key `idx_user_id` (`user_id`),
  key `idx_file_type` (`file_type`)
) engine=innodb auto_increment=1 default charset=utf8 comment='用户隐私文件';

#5.商品图片关联信息表 wk_product_picture
create table `wk_product_picture` (
  `id` int(10) unsigned not null auto_increment comment 'id',
  `product_id` int(10) unsigned not null comment '商品id',
  `file_uid` varchar(64) not null comment '文件uuid',
  `created_date` datetime default current_timestamp comment '创建时间',
  `last_updated_date` datetime default current_timestamp comment '修改时间',
  primary key (`id`),
  key `idx_product_id` (`product_id`),
  key `idx_file_uid` (`file_uid`)
) engine=innodb auto_increment=1 default charset=utf8 comment='商品图片关联信息表';

#6.用户表 wb_user_detail_info
create table `wb_user_detail_info` (
  `id` int(10) unsigned not null auto_increment comment 'id',
  `we_chat_id` int(10) unsigned not null comment '微信id',
  `we_chat_no` varchar(20) not null comment '微信号',
  `phone_no` varchar(11) default null comment '手机号',
  `created_date` datetime default current_timestamp comment '创建时间',
  `last_updated_date` datetime default current_timestamp comment '修改时间',
  primary key (`id`)
) engine=innodb auto_increment=1 default charset=utf8 comment='用户表';

#7.用户地址管理表 wb_user_address_detail
create table `wb_user_address_detail` (
  `id` int(10) unsigned not null auto_increment comment 'id',
  `we_chat_id` int(10) unsigned not null comment '微信id',
  `province_id` varchar(36) not null default '0' comment '省份id',
  `city_id` varchar(36) not null default '0' comment '城市id',
  `area_id` varchar(36) not null default '0' comment '区域id',
  `address` varchar(200) not null comment '收货地址',
  `user_name` varchar(30) not null comment '收货人名称',
  `phone_no` varchar(11) default null comment '手机号',
  `created_date` datetime default current_timestamp comment '创建时间',
  `last_updated_date` datetime default current_timestamp comment '修改时间',
  primary key (`id`)
) engine=innodb auto_increment=1 default charset=utf8 comment='用户表';

#8.用户订单明细表 wb_user_order_detail
create table `wb_user_order_detail` (
  `id` int(10) unsigned not null auto_increment comment 'id',
  `order_no` int(10) unsigned not null comment '订单号',
  `we_chat_id` int(10) unsigned not null comment '微信id',
  `product_id` varchar(100) not null comment '商品id',
  `order_money` decimal(12,5) not null comment '订单价格',
  `order_num` int(10) not null comment '订单数量',
  `order_status` tinyint(5) default null comment '订单状态',
  `is_enable` tinyint(2) default '1' comment '是否可用',
  `created_date` datetime default current_timestamp comment '创建时间',
  `last_updated_date` datetime default current_timestamp comment '修改时间',
  primary key (`id`)
) engine=innodb auto_increment=1 default charset=utf8 comment='用户订单明细表';
