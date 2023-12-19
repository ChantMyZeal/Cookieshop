-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cookieshop
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `image1` varchar(45) DEFAULT NULL,
  `image2` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (9,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(10,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,3),(11,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,3),(12,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(13,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(14,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(15,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(16,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(18,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(19,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,4),(20,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,4),(21,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(23,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(24,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(25,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(26,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(27,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(28,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(29,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(30,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(31,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(32,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(33,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(34,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(35,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(36,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(37,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(38,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(39,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,5),(40,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,5),(41,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(42,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,8),(43,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(44,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(45,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,11),(46,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(47,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,8),(48,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(49,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,8),(50,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(51,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(52,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(53,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,11),(54,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(55,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(56,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(57,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(58,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(59,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(60,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(61,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(62,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(63,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(64,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(65,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(66,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(67,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(68,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(69,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(70,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(71,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(72,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(73,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(74,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(75,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(76,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(77,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(78,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(79,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(80,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(81,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(82,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(83,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(84,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(85,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(86,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(87,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(88,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(89,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(90,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(91,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(92,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(93,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(94,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(95,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(97,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(98,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(99,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(100,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(101,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(102,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(103,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(104,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(105,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(106,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(108,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(109,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(110,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(111,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(112,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(113,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(114,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(115,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(116,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(117,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(118,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(119,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(120,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(121,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(122,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(123,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(124,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(125,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(126,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(127,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(128,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(129,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(130,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(131,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(132,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(133,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(134,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(135,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(136,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(137,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(138,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(139,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(140,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(141,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(142,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(143,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(144,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(145,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(146,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(147,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(148,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(149,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(150,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(151,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(152,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(153,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(154,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(155,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(156,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(157,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(158,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(159,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(160,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(161,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(162,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(163,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(164,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(165,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(166,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(167,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(168,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(169,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(170,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(171,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2),(172,'蛋蜜松糕','/picture/13-1.jpg','/picture/13-1.jpg','/picture/13-1.jpg',36,'蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.',10,2),(173,'意式芝芝脆','/picture/14-1.jpg','/picture/14-1.jpg','/picture/14-1.jpg',39,'采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.',10,2),(174,'草莓熊派对','/picture/8-1.jpg','/picture/8-2.jpg','/picture/8-3.jpg',99,'加入草莓熊的派对,与它们一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,一起分享劳动的果实. 主口味:草莓味,巧克力味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:★★☆☆☆ 最佳保存温度：5至7摄氏度',10,3),(175,'莓莓雪冰','/picture/9-1.jpg','/picture/9-2.jpg','/picture/9-3.jpg',88,'甜郁草莓配合冰冻奶油的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡. 主口味:草莓味 主要原料:草莓果溶 甜度:★★★☆☆ 最佳保存温度：-12至-15摄氏度',10,1),(176,'玫瑰泡芙','/picture/10-1.jpg','/picture/10-2.jpg','/picture/10-3.jpg',28,'优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.',10,2),(177,'芝香温泉糕','/picture/11-1.jpg','/picture/11-1.jpg','/picture/11-1.jpg',38,'为了保证芝士的香醇,借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.',10,2),(178,'柠香芝士条','/picture/12-1.jpg','/picture/1-2.jpg','/picture/12-1.jpg',36,'柠香芝士和风轻拂,奶香浓郁,质地柔滑,口感细腻.',10,2);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_idx` (`order_id`),
  KEY `fk_orderitem_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `orderlist` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (79,88,1,9,76),(80,36,1,13,77),(81,99,1,15,77),(82,28,2,10,78),(83,39,3,14,78),(84,88,1,9,79),(85,28,1,10,79),(86,39,1,14,79);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderlist`
--

DROP TABLE IF EXISTS `orderlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderlist`
--

LOCK TABLES `orderlist` WRITE;
/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` VALUES (76,88,1,4,1,'张三','12656623666','华工大学城','2023-12-19 07:43:23',37),(77,135,2,4,2,'布老师','13766654321','华南理工大学','2023-12-19 07:46:55',2),(78,173,5,3,1,'布老师','13766654321','华南理工大学','2023-12-19 07:49:13',2),(79,155,3,2,2,'李四','147258369','华工幼儿园','2023-12-19 10:43:08',38);
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (9,2,9),(11,3,12),(12,3,13),(14,3,15),(17,3,18),(43,1,9),(44,1,10),(45,1,11),(46,1,12),(47,1,13),(48,1,14),(49,1,15),(50,2,10),(51,2,14);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'冰雪系列'),(2,'悠享系列'),(3,'童趣系列'),(4,'法式系列'),(5,'经典系列'),(8,'节日系列'),(11,'臻选系列');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@scut.com','202130440279','管理员','13588876543','华南理工大学',_binary '',_binary '\0'),(2,'user0','user0@scut.com','chenmingzhao','布老师','13766654321','华南理工大学',_binary '\0',_binary '\0'),(37,'user1','user1@qq.com','123456','张三','12656623666','华工大学城',_binary '\0',_binary '\0'),(38,'user2','user2@163.com','233233233','李四','147258369','华工幼儿园',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19 20:27:15
