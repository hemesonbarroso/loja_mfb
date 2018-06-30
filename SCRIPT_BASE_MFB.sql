/*
MySQL - 5.7.19-log : Database - base_mfb
*********************************************************************
*/ 
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`base_mfb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `base_mfb`;

/*Table structure for table `cad_fornecedor` */

DROP TABLE IF EXISTS `cad_fornecedor`;

CREATE TABLE `cad_fornecedor` (
  `Codigo_forn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Cgc_Cnpj` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ins_Est` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ins_Munic` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Razao_Social` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nome_Fantasia` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tipo_forn` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Endereco` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fone_Residencial` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fone_Comercial` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cidade` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_cad` timestamp(6) NULL DEFAULT NULL,
  `Estado` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Bairro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cep` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ativo_sn` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo_forn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cad_fornecedor` */

LOCK TABLES `cad_fornecedor` WRITE;

UNLOCK TABLES;

/*Table structure for table `t_clientes` */

DROP TABLE IF EXISTS `t_clientes`;

CREATE TABLE `t_clientes` (
  `COD_CLIENTE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Cgc_Cnpj` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ins_Est` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ins_Munic` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Razao_Social` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nome_Fantasia` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tipo_forn` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Endereco` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fone_Residencial` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fone_Comercial` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cidade` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_cad` timestamp(6) NULL DEFAULT NULL,
  `Estado` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Bairro` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cep` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ativo_sn` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`COD_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_clientes` */

LOCK TABLES `t_clientes` WRITE;

UNLOCK TABLES;

/*Table structure for table `t_itens_vendas` */

DROP TABLE IF EXISTS `t_itens_vendas`;

CREATE TABLE `t_itens_vendas` (
  `COD_ITEM_VENDA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COD_VENDA` int(10) unsigned NOT NULL,
  `COD_PRODUTO` int(10) unsigned NOT NULL,
  `DESCRICAO` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QUANTIDADE` double(24,2) DEFAULT NULL,
  `VALORITENS` double(24,2) DEFAULT NULL,
  PRIMARY KEY (`COD_ITEM_VENDA`),
  KEY `cst2` (`COD_PRODUTO`),
  KEY `cst1` (`COD_VENDA`),
  CONSTRAINT `cst1` FOREIGN KEY (`COD_VENDA`) REFERENCES `t_vendas` (`COD_VENDA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cst2` FOREIGN KEY (`COD_PRODUTO`) REFERENCES `t_produtos` (`COD_PRODUTO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_itens_vendas` */

LOCK TABLES `t_itens_vendas` WRITE;

UNLOCK TABLES;

/*Table structure for table `t_produtos` */

DROP TABLE IF EXISTS `t_produtos`;

CREATE TABLE `t_produtos` (
  `COD_PRODUTO` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Codigo_forn` int(10) unsigned NOT NULL,
  `DESCRICAO` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARCA` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODELO` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QUANTIDADE` float DEFAULT NULL,
  `PRECOUNIT` float DEFAULT NULL,
  `EMBALAGEM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNIDADE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PESOLIQUIDO` double DEFAULT NULL,
  `PESOBRUTO` double DEFAULT NULL,
  `DATACADASTRO` timestamp(6) NULL DEFAULT NULL,
  `ORIGEM` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODFABRICA` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODBARRA` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NCM` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OBSERVACAO` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITUACAO` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`COD_PRODUTO`),
  KEY `cst3` (`Codigo_forn`),
  CONSTRAINT `cst3` FOREIGN KEY (`Codigo_forn`) REFERENCES `cad_fornecedor` (`Codigo_forn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_produtos` */

LOCK TABLES `t_produtos` WRITE;

UNLOCK TABLES;

/*Table structure for table `t_vendas` */

DROP TABLE IF EXISTS `t_vendas`;

CREATE TABLE `t_vendas` (
  `COD_VENDA` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COD_CLIENTE` int(10) unsigned NOT NULL,
  `DATAVENDA` timestamp(6) NULL DEFAULT NULL,
  `VALORTOTAL` float DEFAULT NULL,
  `TOTALDESC` float DEFAULT NULL,
  `PERDESC` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAPAGAMENTO` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QTDITENS` int(10) DEFAULT NULL,
  `OBSERVACAO` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`COD_VENDA`),
  KEY `cst0` (`COD_CLIENTE`),
  CONSTRAINT `cst0` FOREIGN KEY (`COD_CLIENTE`) REFERENCES `t_clientes` (`COD_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `t_vendas` */

LOCK TABLES `t_vendas` WRITE;

UNLOCK TABLES;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `Codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Permissao_contReceb` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Relatorio_Presi` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CadGuia_Rec` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ControleAcesso` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

insert  into `usuario`(`Codigo`,`Usuario`,`senha`,`Permissao_contReceb`,`Relatorio_Presi`,`CadGuia_Rec`,`ControleAcesso`) values (1,'PADRAO','PADRAO',NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
