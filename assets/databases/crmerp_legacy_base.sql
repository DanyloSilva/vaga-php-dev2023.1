/*
 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : crmerp_legacy_base

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 05/01/2023 20:30:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for empresas
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `razao_social` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_atendimento` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_planejamento` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_financeiro` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_juridico` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cgc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telefone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `celular` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `endereco` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `endereco_bairro` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cep` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cep_estado` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cep_municipio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cep_bairro` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cep_endereco` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `cep_numero` int(11) NULL DEFAULT NULL,
  `cep_comp` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `cep_referencia` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `responsavel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `resp_cgc` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `database` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipo_banco` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipo_cartao` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `agencia` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `conta` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `datecreate` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_empresa`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 700 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of empresas
-- ----------------------------
INSERT INTO `empresas` VALUES (678, 'Enterprise Company 1', 'COMPANY 1 LTDA', 'contato@enterprise.legacy.com', NULL, NULL, NULL, NULL, '00.000.000/0001-55', 'ambos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'crmerp_legacy_company_1', NULL, NULL, NULL, NULL, 1, 1, '2018-02-02 16:44:26');
INSERT INTO `empresas` VALUES (699, 'Enterprise Company 2', 'COMPANY 2 LTDA', 'contato@enterprise.legacy.com', NULL, NULL, NULL, NULL, '00.000.000/0001-77', 'ambos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'crmerp_legacy_company_2', NULL, NULL, NULL, NULL, 1, 1, '2022-04-29 10:18:46');

-- ----------------------------
-- Table structure for grupo_acessos
-- ----------------------------
DROP TABLE IF EXISTS `grupo_acessos`;
CREATE TABLE `grupo_acessos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(11) NOT NULL,
  `acesso_id` int(11) NOT NULL,
  `prioridade` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_grupo_acessos`(`id`) USING BTREE,
  INDEX `idx_grupo_acessos_grupo`(`grupo_id`) USING BTREE,
  INDEX `idx_grupo_acessos_acesso`(`acesso_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 821 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grupo_acessos
-- ----------------------------
INSERT INTO `grupo_acessos` VALUES (39, 1, 2, 43);
INSERT INTO `grupo_acessos` VALUES (40, 1, 4, 36);
INSERT INTO `grupo_acessos` VALUES (41, 1, 3, 37);
INSERT INTO `grupo_acessos` VALUES (43, 1, 12, 38);
INSERT INTO `grupo_acessos` VALUES (46, 1, 5, 39);
INSERT INTO `grupo_acessos` VALUES (47, 1, 6, 40);
INSERT INTO `grupo_acessos` VALUES (48, 1, 9, 41);
INSERT INTO `grupo_acessos` VALUES (49, 1, 11, 42);
INSERT INTO `grupo_acessos` VALUES (51, 1, 7, 35);
INSERT INTO `grupo_acessos` VALUES (52, 1, 10, 34);
INSERT INTO `grupo_acessos` VALUES (53, 1, 13, 33);
INSERT INTO `grupo_acessos` VALUES (60, 1, 14, 32);
INSERT INTO `grupo_acessos` VALUES (61, 1, 15, 31);
INSERT INTO `grupo_acessos` VALUES (62, 1, 16, 30);
INSERT INTO `grupo_acessos` VALUES (89, 1, 17, 29);
INSERT INTO `grupo_acessos` VALUES (90, 1, 18, 28);
INSERT INTO `grupo_acessos` VALUES (111, 1, 20, 25);
INSERT INTO `grupo_acessos` VALUES (112, 1, 21, 26);
INSERT INTO `grupo_acessos` VALUES (113, 1, 23, 27);
INSERT INTO `grupo_acessos` VALUES (115, 1, 25, 24);
INSERT INTO `grupo_acessos` VALUES (123, 1, 27, 23);
INSERT INTO `grupo_acessos` VALUES (149, 1, 28, 22);
INSERT INTO `grupo_acessos` VALUES (151, 1, 29, 21);
INSERT INTO `grupo_acessos` VALUES (152, 1, 31, 20);
INSERT INTO `grupo_acessos` VALUES (157, 1, 32, 19);
INSERT INTO `grupo_acessos` VALUES (221, 1, 33, 18);
INSERT INTO `grupo_acessos` VALUES (224, 1, 34, 17);
INSERT INTO `grupo_acessos` VALUES (227, 1, 35, 16);
INSERT INTO `grupo_acessos` VALUES (229, 1, 37, 15);
INSERT INTO `grupo_acessos` VALUES (230, 1, 38, 14);
INSERT INTO `grupo_acessos` VALUES (231, 1, 39, 13);
INSERT INTO `grupo_acessos` VALUES (296, 1, 43, 12);
INSERT INTO `grupo_acessos` VALUES (297, 1, 42, 11);
INSERT INTO `grupo_acessos` VALUES (301, 1, 42, 11);
INSERT INTO `grupo_acessos` VALUES (311, 1, 41, 9);
INSERT INTO `grupo_acessos` VALUES (324, 1, 47, 8);
INSERT INTO `grupo_acessos` VALUES (335, 1, 48, 7);
INSERT INTO `grupo_acessos` VALUES (384, 1, 50, 5);
INSERT INTO `grupo_acessos` VALUES (390, 1, 51, 4);
INSERT INTO `grupo_acessos` VALUES (399, 2, 51, 4);
INSERT INTO `grupo_acessos` VALUES (400, 2, 45, 5);
INSERT INTO `grupo_acessos` VALUES (401, 2, 20, 6);
INSERT INTO `grupo_acessos` VALUES (402, 2, 21, 7);
INSERT INTO `grupo_acessos` VALUES (403, 2, 23, 8);
INSERT INTO `grupo_acessos` VALUES (404, 2, 50, 9);
INSERT INTO `grupo_acessos` VALUES (405, 2, 39, 10);
INSERT INTO `grupo_acessos` VALUES (406, 2, 48, 11);
INSERT INTO `grupo_acessos` VALUES (407, 2, 42, 12);
INSERT INTO `grupo_acessos` VALUES (408, 2, 28, 13);
INSERT INTO `grupo_acessos` VALUES (409, 2, 47, 14);
INSERT INTO `grupo_acessos` VALUES (410, 2, 2, 15);
INSERT INTO `grupo_acessos` VALUES (411, 4, 5, 5);
INSERT INTO `grupo_acessos` VALUES (412, 4, 4, 6);
INSERT INTO `grupo_acessos` VALUES (413, 4, 37, 7);
INSERT INTO `grupo_acessos` VALUES (414, 4, 18, 8);
INSERT INTO `grupo_acessos` VALUES (415, 4, 31, 9);
INSERT INTO `grupo_acessos` VALUES (416, 4, 33, 10);
INSERT INTO `grupo_acessos` VALUES (417, 4, 51, 11);
INSERT INTO `grupo_acessos` VALUES (418, 4, 43, 12);
INSERT INTO `grupo_acessos` VALUES (419, 4, 6, 13);
INSERT INTO `grupo_acessos` VALUES (420, 4, 1, 14);
INSERT INTO `grupo_acessos` VALUES (421, 4, 29, 15);
INSERT INTO `grupo_acessos` VALUES (422, 4, 32, 16);
INSERT INTO `grupo_acessos` VALUES (424, 4, 7, 17);
INSERT INTO `grupo_acessos` VALUES (425, 4, 41, 18);
INSERT INTO `grupo_acessos` VALUES (426, 4, 34, 19);
INSERT INTO `grupo_acessos` VALUES (427, 4, 9, 20);
INSERT INTO `grupo_acessos` VALUES (428, 4, 10, 21);
INSERT INTO `grupo_acessos` VALUES (431, 4, 11, 22);
INSERT INTO `grupo_acessos` VALUES (432, 4, 12, 23);
INSERT INTO `grupo_acessos` VALUES (433, 4, 20, 24);
INSERT INTO `grupo_acessos` VALUES (434, 4, 17, 25);
INSERT INTO `grupo_acessos` VALUES (435, 4, 25, 26);
INSERT INTO `grupo_acessos` VALUES (436, 4, 21, 27);
INSERT INTO `grupo_acessos` VALUES (437, 4, 13, 28);
INSERT INTO `grupo_acessos` VALUES (438, 4, 23, 29);
INSERT INTO `grupo_acessos` VALUES (441, 4, 39, 30);
INSERT INTO `grupo_acessos` VALUES (442, 4, 38, 31);
INSERT INTO `grupo_acessos` VALUES (443, 4, 48, 32);
INSERT INTO `grupo_acessos` VALUES (445, 4, 16, 33);
INSERT INTO `grupo_acessos` VALUES (446, 4, 42, 34);
INSERT INTO `grupo_acessos` VALUES (447, 4, 28, 35);
INSERT INTO `grupo_acessos` VALUES (448, 4, 47, 36);
INSERT INTO `grupo_acessos` VALUES (449, 4, 14, 37);
INSERT INTO `grupo_acessos` VALUES (450, 4, 15, 38);
INSERT INTO `grupo_acessos` VALUES (452, 6, 5, 3);
INSERT INTO `grupo_acessos` VALUES (453, 6, 4, 4);
INSERT INTO `grupo_acessos` VALUES (454, 6, 37, 5);
INSERT INTO `grupo_acessos` VALUES (455, 6, 18, 6);
INSERT INTO `grupo_acessos` VALUES (456, 6, 31, 7);
INSERT INTO `grupo_acessos` VALUES (457, 6, 33, 8);
INSERT INTO `grupo_acessos` VALUES (458, 6, 51, 9);
INSERT INTO `grupo_acessos` VALUES (459, 6, 6, 10);
INSERT INTO `grupo_acessos` VALUES (460, 6, 29, 11);
INSERT INTO `grupo_acessos` VALUES (461, 6, 32, 12);
INSERT INTO `grupo_acessos` VALUES (462, 6, 7, 13);
INSERT INTO `grupo_acessos` VALUES (463, 6, 41, 14);
INSERT INTO `grupo_acessos` VALUES (464, 6, 34, 15);
INSERT INTO `grupo_acessos` VALUES (465, 6, 9, 16);
INSERT INTO `grupo_acessos` VALUES (466, 6, 10, 17);
INSERT INTO `grupo_acessos` VALUES (467, 6, 45, 18);
INSERT INTO `grupo_acessos` VALUES (468, 6, 11, 19);
INSERT INTO `grupo_acessos` VALUES (469, 6, 12, 20);
INSERT INTO `grupo_acessos` VALUES (470, 6, 20, 21);
INSERT INTO `grupo_acessos` VALUES (471, 6, 17, 22);
INSERT INTO `grupo_acessos` VALUES (472, 6, 25, 23);
INSERT INTO `grupo_acessos` VALUES (473, 6, 21, 24);
INSERT INTO `grupo_acessos` VALUES (474, 6, 13, 25);
INSERT INTO `grupo_acessos` VALUES (475, 6, 23, 26);
INSERT INTO `grupo_acessos` VALUES (477, 6, 39, 27);
INSERT INTO `grupo_acessos` VALUES (478, 6, 38, 28);
INSERT INTO `grupo_acessos` VALUES (479, 6, 48, 29);
INSERT INTO `grupo_acessos` VALUES (480, 6, 16, 30);
INSERT INTO `grupo_acessos` VALUES (481, 6, 28, 31);
INSERT INTO `grupo_acessos` VALUES (482, 6, 47, 32);
INSERT INTO `grupo_acessos` VALUES (483, 6, 14, 33);
INSERT INTO `grupo_acessos` VALUES (484, 6, 15, 34);
INSERT INTO `grupo_acessos` VALUES (485, 6, 2, 35);
INSERT INTO `grupo_acessos` VALUES (486, 7, 5, 3);
INSERT INTO `grupo_acessos` VALUES (487, 7, 4, 4);
INSERT INTO `grupo_acessos` VALUES (488, 7, 37, 5);
INSERT INTO `grupo_acessos` VALUES (489, 7, 18, 6);
INSERT INTO `grupo_acessos` VALUES (490, 7, 31, 7);
INSERT INTO `grupo_acessos` VALUES (491, 7, 33, 8);
INSERT INTO `grupo_acessos` VALUES (492, 7, 51, 9);
INSERT INTO `grupo_acessos` VALUES (493, 7, 6, 10);
INSERT INTO `grupo_acessos` VALUES (494, 7, 29, 11);
INSERT INTO `grupo_acessos` VALUES (495, 7, 32, 12);
INSERT INTO `grupo_acessos` VALUES (496, 7, 7, 13);
INSERT INTO `grupo_acessos` VALUES (497, 7, 41, 14);
INSERT INTO `grupo_acessos` VALUES (498, 7, 34, 15);
INSERT INTO `grupo_acessos` VALUES (499, 7, 9, 16);
INSERT INTO `grupo_acessos` VALUES (500, 7, 10, 17);
INSERT INTO `grupo_acessos` VALUES (501, 7, 45, 18);
INSERT INTO `grupo_acessos` VALUES (502, 7, 11, 19);
INSERT INTO `grupo_acessos` VALUES (503, 7, 12, 20);
INSERT INTO `grupo_acessos` VALUES (504, 7, 20, 21);
INSERT INTO `grupo_acessos` VALUES (505, 7, 17, 22);
INSERT INTO `grupo_acessos` VALUES (506, 7, 25, 23);
INSERT INTO `grupo_acessos` VALUES (507, 7, 21, 24);
INSERT INTO `grupo_acessos` VALUES (508, 7, 13, 25);
INSERT INTO `grupo_acessos` VALUES (509, 7, 23, 26);
INSERT INTO `grupo_acessos` VALUES (511, 7, 39, 27);
INSERT INTO `grupo_acessos` VALUES (512, 7, 38, 28);
INSERT INTO `grupo_acessos` VALUES (513, 7, 48, 29);
INSERT INTO `grupo_acessos` VALUES (515, 7, 16, 30);
INSERT INTO `grupo_acessos` VALUES (516, 7, 28, 31);
INSERT INTO `grupo_acessos` VALUES (517, 7, 47, 32);
INSERT INTO `grupo_acessos` VALUES (518, 7, 14, 33);
INSERT INTO `grupo_acessos` VALUES (519, 7, 15, 34);
INSERT INTO `grupo_acessos` VALUES (520, 7, 2, 35);
INSERT INTO `grupo_acessos` VALUES (521, 8, 43, 1);
INSERT INTO `grupo_acessos` VALUES (522, 9, 41, 2);
INSERT INTO `grupo_acessos` VALUES (553, 1, 1, 3);
INSERT INTO `grupo_acessos` VALUES (554, 6, 1, 2);
INSERT INTO `grupo_acessos` VALUES (555, 7, 1, 2);
INSERT INTO `grupo_acessos` VALUES (556, 2, 1, 3);
INSERT INTO `grupo_acessos` VALUES (559, 5, 73, 1);
INSERT INTO `grupo_acessos` VALUES (560, 2, 49, 2);
INSERT INTO `grupo_acessos` VALUES (561, 2, 38, 1);
INSERT INTO `grupo_acessos` VALUES (562, 2, 73, 0);
INSERT INTO `grupo_acessos` VALUES (563, 1, 73, 2);
INSERT INTO `grupo_acessos` VALUES (564, 4, 73, 4);
INSERT INTO `grupo_acessos` VALUES (565, 6, 73, 1);
INSERT INTO `grupo_acessos` VALUES (566, 7, 73, 1);
INSERT INTO `grupo_acessos` VALUES (567, 9, 73, 1);
INSERT INTO `grupo_acessos` VALUES (569, 4, 50, 3);
INSERT INTO `grupo_acessos` VALUES (570, 1, 74, 1);
INSERT INTO `grupo_acessos` VALUES (571, 6, 74, 0);
INSERT INTO `grupo_acessos` VALUES (572, 7, 74, 0);
INSERT INTO `grupo_acessos` VALUES (574, 1, 75, 0);
INSERT INTO `grupo_acessos` VALUES (576, 4, 75, 2);
INSERT INTO `grupo_acessos` VALUES (580, 10, 51, 12);
INSERT INTO `grupo_acessos` VALUES (581, 10, 6, 13);
INSERT INTO `grupo_acessos` VALUES (582, 10, 1, 14);
INSERT INTO `grupo_acessos` VALUES (583, 10, 7, 15);
INSERT INTO `grupo_acessos` VALUES (584, 10, 10, 16);
INSERT INTO `grupo_acessos` VALUES (585, 10, 11, 17);
INSERT INTO `grupo_acessos` VALUES (586, 10, 12, 18);
INSERT INTO `grupo_acessos` VALUES (587, 10, 20, 19);
INSERT INTO `grupo_acessos` VALUES (588, 10, 13, 20);
INSERT INTO `grupo_acessos` VALUES (589, 10, 14, 21);
INSERT INTO `grupo_acessos` VALUES (590, 10, 15, 22);
INSERT INTO `grupo_acessos` VALUES (591, 10, 31, 1);
INSERT INTO `grupo_acessos` VALUES (592, 10, 33, 2);
INSERT INTO `grupo_acessos` VALUES (593, 10, 41, 3);
INSERT INTO `grupo_acessos` VALUES (594, 10, 74, 4);
INSERT INTO `grupo_acessos` VALUES (595, 10, 23, 5);
INSERT INTO `grupo_acessos` VALUES (596, 10, 39, 6);
INSERT INTO `grupo_acessos` VALUES (597, 10, 38, 7);
INSERT INTO `grupo_acessos` VALUES (598, 10, 48, 8);
INSERT INTO `grupo_acessos` VALUES (599, 10, 75, 9);
INSERT INTO `grupo_acessos` VALUES (600, 10, 47, 10);
INSERT INTO `grupo_acessos` VALUES (601, 10, 73, 11);
INSERT INTO `grupo_acessos` VALUES (602, 11, 51, 15);
INSERT INTO `grupo_acessos` VALUES (603, 11, 6, 16);
INSERT INTO `grupo_acessos` VALUES (604, 11, 1, 17);
INSERT INTO `grupo_acessos` VALUES (605, 11, 7, 18);
INSERT INTO `grupo_acessos` VALUES (606, 11, 10, 19);
INSERT INTO `grupo_acessos` VALUES (607, 11, 11, 20);
INSERT INTO `grupo_acessos` VALUES (608, 11, 12, 21);
INSERT INTO `grupo_acessos` VALUES (609, 11, 20, 22);
INSERT INTO `grupo_acessos` VALUES (610, 11, 13, 23);
INSERT INTO `grupo_acessos` VALUES (611, 11, 14, 24);
INSERT INTO `grupo_acessos` VALUES (612, 11, 15, 25);
INSERT INTO `grupo_acessos` VALUES (613, 11, 31, 4);
INSERT INTO `grupo_acessos` VALUES (614, 11, 33, 5);
INSERT INTO `grupo_acessos` VALUES (615, 11, 41, 6);
INSERT INTO `grupo_acessos` VALUES (616, 11, 74, 7);
INSERT INTO `grupo_acessos` VALUES (617, 11, 23, 8);
INSERT INTO `grupo_acessos` VALUES (618, 11, 39, 9);
INSERT INTO `grupo_acessos` VALUES (619, 11, 38, 10);
INSERT INTO `grupo_acessos` VALUES (620, 11, 48, 11);
INSERT INTO `grupo_acessos` VALUES (621, 11, 75, 12);
INSERT INTO `grupo_acessos` VALUES (622, 11, 47, 13);
INSERT INTO `grupo_acessos` VALUES (623, 11, 73, 14);
INSERT INTO `grupo_acessos` VALUES (624, 11, 21, 0);
INSERT INTO `grupo_acessos` VALUES (625, 11, 50, 1);
INSERT INTO `grupo_acessos` VALUES (626, 11, 42, 2);
INSERT INTO `grupo_acessos` VALUES (627, 11, 28, 3);
INSERT INTO `grupo_acessos` VALUES (628, 12, 5, 6);
INSERT INTO `grupo_acessos` VALUES (629, 12, 4, 7);
INSERT INTO `grupo_acessos` VALUES (630, 12, 37, 8);
INSERT INTO `grupo_acessos` VALUES (631, 12, 18, 9);
INSERT INTO `grupo_acessos` VALUES (632, 12, 31, 10);
INSERT INTO `grupo_acessos` VALUES (633, 12, 33, 11);
INSERT INTO `grupo_acessos` VALUES (634, 12, 51, 12);
INSERT INTO `grupo_acessos` VALUES (635, 12, 6, 13);
INSERT INTO `grupo_acessos` VALUES (636, 12, 1, 14);
INSERT INTO `grupo_acessos` VALUES (637, 12, 29, 15);
INSERT INTO `grupo_acessos` VALUES (638, 12, 7, 16);
INSERT INTO `grupo_acessos` VALUES (639, 12, 41, 17);
INSERT INTO `grupo_acessos` VALUES (640, 12, 34, 18);
INSERT INTO `grupo_acessos` VALUES (641, 12, 9, 19);
INSERT INTO `grupo_acessos` VALUES (642, 12, 10, 20);
INSERT INTO `grupo_acessos` VALUES (645, 12, 11, 21);
INSERT INTO `grupo_acessos` VALUES (646, 12, 12, 22);
INSERT INTO `grupo_acessos` VALUES (647, 12, 20, 23);
INSERT INTO `grupo_acessos` VALUES (648, 12, 17, 24);
INSERT INTO `grupo_acessos` VALUES (649, 12, 25, 25);
INSERT INTO `grupo_acessos` VALUES (650, 12, 21, 26);
INSERT INTO `grupo_acessos` VALUES (651, 12, 74, 27);
INSERT INTO `grupo_acessos` VALUES (652, 12, 13, 28);
INSERT INTO `grupo_acessos` VALUES (653, 12, 23, 29);
INSERT INTO `grupo_acessos` VALUES (654, 12, 50, 30);
INSERT INTO `grupo_acessos` VALUES (656, 12, 39, 31);
INSERT INTO `grupo_acessos` VALUES (657, 12, 38, 32);
INSERT INTO `grupo_acessos` VALUES (658, 12, 48, 33);
INSERT INTO `grupo_acessos` VALUES (659, 12, 75, 34);
INSERT INTO `grupo_acessos` VALUES (660, 12, 16, 35);
INSERT INTO `grupo_acessos` VALUES (661, 12, 42, 36);
INSERT INTO `grupo_acessos` VALUES (662, 12, 28, 37);
INSERT INTO `grupo_acessos` VALUES (663, 12, 47, 38);
INSERT INTO `grupo_acessos` VALUES (664, 12, 73, 39);
INSERT INTO `grupo_acessos` VALUES (665, 12, 14, 40);
INSERT INTO `grupo_acessos` VALUES (666, 12, 15, 41);
INSERT INTO `grupo_acessos` VALUES (667, 12, 32, 42);
INSERT INTO `grupo_acessos` VALUES (668, 4, 2, 1);
INSERT INTO `grupo_acessos` VALUES (669, 12, 2, 5);
INSERT INTO `grupo_acessos` VALUES (670, 13, 29, 1);
INSERT INTO `grupo_acessos` VALUES (671, 13, 7, 2);
INSERT INTO `grupo_acessos` VALUES (672, 13, 9, 3);
INSERT INTO `grupo_acessos` VALUES (673, 13, 25, 4);
INSERT INTO `grupo_acessos` VALUES (674, 13, 74, 5);
INSERT INTO `grupo_acessos` VALUES (675, 13, 23, 6);
INSERT INTO `grupo_acessos` VALUES (676, 13, 39, 7);
INSERT INTO `grupo_acessos` VALUES (677, 13, 38, 8);
INSERT INTO `grupo_acessos` VALUES (678, 13, 48, 9);
INSERT INTO `grupo_acessos` VALUES (679, 13, 75, 10);
INSERT INTO `grupo_acessos` VALUES (680, 13, 16, 11);
INSERT INTO `grupo_acessos` VALUES (681, 13, 47, 12);
INSERT INTO `grupo_acessos` VALUES (682, 13, 73, 13);
INSERT INTO `grupo_acessos` VALUES (683, 13, 32, 14);
INSERT INTO `grupo_acessos` VALUES (684, 13, 2, 0);
INSERT INTO `grupo_acessos` VALUES (685, 8, 73, 0);
INSERT INTO `grupo_acessos` VALUES (686, 14, 18, 2);
INSERT INTO `grupo_acessos` VALUES (687, 14, 51, 3);
INSERT INTO `grupo_acessos` VALUES (688, 14, 1, 4);
INSERT INTO `grupo_acessos` VALUES (689, 14, 12, 5);
INSERT INTO `grupo_acessos` VALUES (690, 14, 20, 6);
INSERT INTO `grupo_acessos` VALUES (691, 14, 17, 7);
INSERT INTO `grupo_acessos` VALUES (692, 14, 23, 8);
INSERT INTO `grupo_acessos` VALUES (693, 14, 39, 9);
INSERT INTO `grupo_acessos` VALUES (694, 14, 48, 10);
INSERT INTO `grupo_acessos` VALUES (695, 14, 75, 11);
INSERT INTO `grupo_acessos` VALUES (696, 14, 16, 12);
INSERT INTO `grupo_acessos` VALUES (697, 14, 47, 13);
INSERT INTO `grupo_acessos` VALUES (698, 14, 73, 14);
INSERT INTO `grupo_acessos` VALUES (699, 14, 2, 1);
INSERT INTO `grupo_acessos` VALUES (700, 14, 74, 0);
INSERT INTO `grupo_acessos` VALUES (701, 5, 2, 0);
INSERT INTO `grupo_acessos` VALUES (702, 9, 2, 0);
INSERT INTO `grupo_acessos` VALUES (703, 15, 1, 0);
INSERT INTO `grupo_acessos` VALUES (704, 15, 74, 1);
INSERT INTO `grupo_acessos` VALUES (705, 15, 23, 2);
INSERT INTO `grupo_acessos` VALUES (706, 15, 38, 3);
INSERT INTO `grupo_acessos` VALUES (707, 15, 48, 4);
INSERT INTO `grupo_acessos` VALUES (708, 15, 75, 5);
INSERT INTO `grupo_acessos` VALUES (709, 15, 47, 6);
INSERT INTO `grupo_acessos` VALUES (710, 15, 73, 7);
INSERT INTO `grupo_acessos` VALUES (711, 15, 2, 8);
INSERT INTO `grupo_acessos` VALUES (712, 15, 32, 9);
INSERT INTO `grupo_acessos` VALUES (713, 12, 85, 4);
INSERT INTO `grupo_acessos` VALUES (714, 12, 89, 0);
INSERT INTO `grupo_acessos` VALUES (715, 12, 88, 1);
INSERT INTO `grupo_acessos` VALUES (716, 12, 91, 2);
INSERT INTO `grupo_acessos` VALUES (717, 12, 101, 3);
INSERT INTO `grupo_acessos` VALUES (718, 10, 42, 0);
INSERT INTO `grupo_acessos` VALUES (719, 16, 85, 0);
INSERT INTO `grupo_acessos` VALUES (720, 16, 89, 1);
INSERT INTO `grupo_acessos` VALUES (721, 16, 5, 2);
INSERT INTO `grupo_acessos` VALUES (722, 16, 4, 3);
INSERT INTO `grupo_acessos` VALUES (723, 16, 37, 4);
INSERT INTO `grupo_acessos` VALUES (724, 16, 18, 5);
INSERT INTO `grupo_acessos` VALUES (725, 16, 31, 6);
INSERT INTO `grupo_acessos` VALUES (726, 16, 33, 7);
INSERT INTO `grupo_acessos` VALUES (727, 16, 51, 8);
INSERT INTO `grupo_acessos` VALUES (728, 16, 6, 9);
INSERT INTO `grupo_acessos` VALUES (729, 16, 1, 10);
INSERT INTO `grupo_acessos` VALUES (730, 16, 29, 11);
INSERT INTO `grupo_acessos` VALUES (731, 16, 27, 12);
INSERT INTO `grupo_acessos` VALUES (732, 16, 7, 13);
INSERT INTO `grupo_acessos` VALUES (733, 16, 41, 14);
INSERT INTO `grupo_acessos` VALUES (734, 16, 34, 15);
INSERT INTO `grupo_acessos` VALUES (735, 16, 9, 16);
INSERT INTO `grupo_acessos` VALUES (736, 16, 10, 17);
INSERT INTO `grupo_acessos` VALUES (737, 16, 3, 18);
INSERT INTO `grupo_acessos` VALUES (738, 16, 83, 19);
INSERT INTO `grupo_acessos` VALUES (739, 16, 11, 20);
INSERT INTO `grupo_acessos` VALUES (740, 16, 109, 21);
INSERT INTO `grupo_acessos` VALUES (741, 16, 12, 22);
INSERT INTO `grupo_acessos` VALUES (742, 16, 20, 23);
INSERT INTO `grupo_acessos` VALUES (743, 16, 17, 24);
INSERT INTO `grupo_acessos` VALUES (744, 16, 25, 25);
INSERT INTO `grupo_acessos` VALUES (745, 16, 21, 26);
INSERT INTO `grupo_acessos` VALUES (746, 16, 74, 27);
INSERT INTO `grupo_acessos` VALUES (747, 16, 13, 28);
INSERT INTO `grupo_acessos` VALUES (748, 16, 23, 29);
INSERT INTO `grupo_acessos` VALUES (749, 16, 50, 30);
INSERT INTO `grupo_acessos` VALUES (750, 16, 86, 31);
INSERT INTO `grupo_acessos` VALUES (751, 16, 35, 32);
INSERT INTO `grupo_acessos` VALUES (752, 16, 88, 33);
INSERT INTO `grupo_acessos` VALUES (753, 16, 91, 34);
INSERT INTO `grupo_acessos` VALUES (754, 16, 101, 35);
INSERT INTO `grupo_acessos` VALUES (755, 16, 39, 36);
INSERT INTO `grupo_acessos` VALUES (756, 16, 38, 37);
INSERT INTO `grupo_acessos` VALUES (757, 16, 48, 38);
INSERT INTO `grupo_acessos` VALUES (758, 16, 75, 39);
INSERT INTO `grupo_acessos` VALUES (759, 16, 16, 40);
INSERT INTO `grupo_acessos` VALUES (760, 16, 42, 41);
INSERT INTO `grupo_acessos` VALUES (761, 16, 28, 42);
INSERT INTO `grupo_acessos` VALUES (762, 16, 47, 43);
INSERT INTO `grupo_acessos` VALUES (763, 16, 73, 44);
INSERT INTO `grupo_acessos` VALUES (764, 16, 14, 45);
INSERT INTO `grupo_acessos` VALUES (765, 16, 15, 46);
INSERT INTO `grupo_acessos` VALUES (766, 16, 2, 47);
INSERT INTO `grupo_acessos` VALUES (767, 16, 32, 48);
INSERT INTO `grupo_acessos` VALUES (768, 17, 85, 0);
INSERT INTO `grupo_acessos` VALUES (769, 17, 89, 1);
INSERT INTO `grupo_acessos` VALUES (770, 17, 5, 2);
INSERT INTO `grupo_acessos` VALUES (771, 17, 4, 3);
INSERT INTO `grupo_acessos` VALUES (772, 17, 37, 4);
INSERT INTO `grupo_acessos` VALUES (773, 17, 18, 5);
INSERT INTO `grupo_acessos` VALUES (774, 17, 31, 6);
INSERT INTO `grupo_acessos` VALUES (775, 17, 33, 7);
INSERT INTO `grupo_acessos` VALUES (776, 17, 51, 8);
INSERT INTO `grupo_acessos` VALUES (777, 17, 6, 9);
INSERT INTO `grupo_acessos` VALUES (778, 17, 1, 10);
INSERT INTO `grupo_acessos` VALUES (779, 17, 29, 11);
INSERT INTO `grupo_acessos` VALUES (780, 17, 27, 12);
INSERT INTO `grupo_acessos` VALUES (781, 17, 7, 13);
INSERT INTO `grupo_acessos` VALUES (782, 17, 41, 14);
INSERT INTO `grupo_acessos` VALUES (783, 17, 34, 15);
INSERT INTO `grupo_acessos` VALUES (784, 17, 9, 16);
INSERT INTO `grupo_acessos` VALUES (785, 17, 10, 17);
INSERT INTO `grupo_acessos` VALUES (786, 17, 3, 18);
INSERT INTO `grupo_acessos` VALUES (787, 17, 83, 19);
INSERT INTO `grupo_acessos` VALUES (788, 17, 11, 20);
INSERT INTO `grupo_acessos` VALUES (789, 17, 109, 21);
INSERT INTO `grupo_acessos` VALUES (790, 17, 12, 22);
INSERT INTO `grupo_acessos` VALUES (791, 17, 20, 23);
INSERT INTO `grupo_acessos` VALUES (792, 17, 17, 24);
INSERT INTO `grupo_acessos` VALUES (793, 17, 25, 25);
INSERT INTO `grupo_acessos` VALUES (794, 17, 21, 26);
INSERT INTO `grupo_acessos` VALUES (795, 17, 74, 27);
INSERT INTO `grupo_acessos` VALUES (796, 17, 13, 28);
INSERT INTO `grupo_acessos` VALUES (797, 17, 23, 29);
INSERT INTO `grupo_acessos` VALUES (798, 17, 50, 30);
INSERT INTO `grupo_acessos` VALUES (799, 17, 86, 31);
INSERT INTO `grupo_acessos` VALUES (800, 17, 35, 32);
INSERT INTO `grupo_acessos` VALUES (801, 17, 88, 33);
INSERT INTO `grupo_acessos` VALUES (802, 17, 91, 34);
INSERT INTO `grupo_acessos` VALUES (803, 17, 101, 35);
INSERT INTO `grupo_acessos` VALUES (804, 17, 39, 36);
INSERT INTO `grupo_acessos` VALUES (805, 17, 38, 37);
INSERT INTO `grupo_acessos` VALUES (806, 17, 48, 38);
INSERT INTO `grupo_acessos` VALUES (807, 17, 75, 39);
INSERT INTO `grupo_acessos` VALUES (808, 17, 16, 40);
INSERT INTO `grupo_acessos` VALUES (809, 17, 42, 41);
INSERT INTO `grupo_acessos` VALUES (810, 17, 28, 42);
INSERT INTO `grupo_acessos` VALUES (811, 17, 47, 43);
INSERT INTO `grupo_acessos` VALUES (812, 17, 73, 44);
INSERT INTO `grupo_acessos` VALUES (813, 17, 14, 45);
INSERT INTO `grupo_acessos` VALUES (814, 17, 15, 46);
INSERT INTO `grupo_acessos` VALUES (815, 17, 2, 47);
INSERT INTO `grupo_acessos` VALUES (816, 17, 32, 48);
INSERT INTO `grupo_acessos` VALUES (817, 18, 1, 0);
INSERT INTO `grupo_acessos` VALUES (818, 18, 2, 1);
INSERT INTO `grupo_acessos` VALUES (819, 4, 74, 0);
INSERT INTO `grupo_acessos` VALUES (820, 19, 31, 0);

-- ----------------------------
-- Table structure for grupos
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `data_permissions` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date_create` datetime(0) NOT NULL,
  `date_update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_grupo`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grupos
-- ----------------------------
INSERT INTO `grupos` VALUES (1, 'Admin', '{\"carteiras\":[\"view\",\"add\",\"edit\"],\"centrodecustos\":[\"view\",\"add\",\"edit\"],\"conciliacao\":[\"view\"],\"concorrentes\":[\"view\",\"add\",\"edit\"],\"pagarcontas\":[\"view\",\"add\",\"edit\",\"alterar_pagos\",\"alterar_troco\"],\"pc_equipes\":[\"view\",\"edit\",\"delete\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"alterar_pagos\",\"emitir_recibos\",\"enviar_comprovantes\"],\"receberprodutos\":[\"view\",\"add\",\"edit\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"resumo_evento\",\"view\"],\"contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"empresas\":[\"view\",\"add\",\"edit\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"edit\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fluxocaixa\":[\"view\"],\"formapagamentos\":[\"view\",\"add\",\"edit\"],\"fornecedores\":[\"view\",\"add\",\"edit\"],\"dadosbancarios\":[\"view\",\"add\",\"edit\",\"delete\"],\"grupos\":[\"view\",\"add\",\"edit\",\"customizar\"],\"inadimplentes\":[\"view\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\",\"add\",\"edit\"],\"pacotes\":[\"view\",\"add\",\"edit\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\",\"delete\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\",\"block_edit_nid\"],\"atendimentos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"delete\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"boletos_lote\",\"importar\",\"migrar\",\"convidados\",\"fichas_identificacao\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\",\"edit\",\"delete\"],\"eventos\":[\"view\",\"add\",\"edit\",\"delete\"],\"evento_equipes\":[\"view\",\"add\",\"edit\",\"delete\",\"gerar_ordem\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"add\",\"edit\"],\"planos_cortesias\":[\"view\",\"add\",\"edit\",\"delete\"],\"planos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"planos_regrapagamentos\":[\"view\",\"add\",\"delete\",\"split\",\"historico\",\"transferencias\",\"saques\"],\"produtovendas\":[\"view\",\"add\",\"edit\",\"delete\"],\"projeto_contratos\":[\"view\",\"add\",\"edit\"],\"projeto_contratos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"despesas\":[\"view\",\"edit\"],\"ranking\":[\"view\"],\"recebedores\":[\"view\",\"add\",\"edit\"],\"relatorios_comercial\":[\"view\",\"atendimento_sac\",\"oportunidades\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasapagar\",\"contasareceber_produtos\",\"faturamento\",\"relatorios_fechamento_caixa\",\"inadimplentes\",\"lancamento_equipe\",\"relatorios_saldosaques\",\"renegociacoes\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"adesoes\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"escalas_equipes\",\"itens_pedidos\",\"projeto_produtosservicos\"],\"representantes\":[\"view\",\"add\",\"edit\"],\"reservardatas\":[\"view\",\"add\",\"edit\",\"delete\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\",\"definir_prioridades\"],\"tipoeventos\":[\"view\",\"add\",\"edit\"],\"tipoprojetos\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"add\",\"edit\",\"customizar\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2017-08-18 14:09:12', '2019-10-16 18:43:40');
INSERT INTO `grupos` VALUES (2, 'Comercial', '{\"contatos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_evento\",\"view\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"redefinir_senha\",\"importar\",\"convidados\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\"],\"eventos\":[\"view\",\"add\",\"edit\"],\"evento_equipes\":[\"view\",\"edit\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"ver_boletos\",\"inativar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"segunda_via\"],\"planos_cortesias\":[\"view\",\"add\"],\"planos_produtos\":[\"view\",\"add\"],\"produtovendas\":[\"view\",\"add\"],\"projeto_contratos\":[\"view\",\"add\",\"edit\"],\"projeto_contratos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"despesas\":[\"view\"],\"ranking\":[\"view\"],\"relatorios_comercial\":[\"view\",\"atendimento_sac\",\"oportunidades\",\"conversoes_vendedores\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"inadimplentes\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"reservardatas\":[\"view\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2017-08-18 14:09:12', '2020-03-28 12:41:25');
INSERT INTO `grupos` VALUES (3, 'Cliente', NULL, '2017-08-18 14:09:12', NULL);
INSERT INTO `grupos` VALUES (4, 'Gerente', '{\"carteiras\":[\"view\",\"add\",\"edit\"],\"centrodecustos\":[\"view\",\"add\",\"edit\"],\"conciliacao\":[\"view\"],\"concorrentes\":[\"view\",\"add\",\"edit\"],\"pagarcontas\":[\"view\",\"add\",\"edit\",\"procedimento_lote\",\"liberar_status\",\"visualizar_detalhes_listagem\",\"visualizar_todos_registros\"],\"pc_equipes\":[\"view\",\"add\",\"edit\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"liberar_status\",\"emitir_recibos\",\"enviar_comprovantes\",\"visualizar_detalhes_listagem\",\"visualizar_todos_registros\"],\"receberprodutos\":[\"view\",\"add\",\"edit\",\"liberar_status\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\",\"permitir_alterar_vendedor\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"resumo_evento\",\"view\"],\"contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"edit\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fluxocaixa\":[\"view\"],\"formapagamentos\":[\"view\",\"add\",\"edit\"],\"fornecedores\":[\"view\",\"add\",\"edit\"],\"dadosbancarios\":[\"view\",\"add\",\"edit\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"permitir_alterar_vendedor\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\",\"add\",\"edit\"],\"pacotes\":[\"view\",\"add\",\"edit\",\"editar_valor\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\",\"delete\"],\"aditivo_contratual\":[\"view\",\"add\",\"edit\",\"delete\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"delete\",\"configs_plano_adesao\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"boletos_lote\",\"importar\",\"convidados\",\"fichas_identificacao\"],\"projeto_contratos\":[\"view\",\"add\",\"edit\"],\"projeto_contratos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"regrasantecipacao_contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\",\"edit\",\"delete\"],\"eventos\":[\"view\",\"add\",\"edit\",\"delete\"],\"evento_equipes\":[\"view\",\"add\",\"edit\",\"delete\",\"gerar_ordem\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"add\",\"edit\"],\"planos_cortesias\":[\"view\",\"add\",\"edit\",\"delete\"],\"planos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"regrasantecipacao_planos\":[\"view\",\"add\",\"edit\"],\"produtovendas\":[\"view\",\"add\",\"edit\",\"delete\"],\"despesas\":[\"view\",\"edit\"],\"ranking\":[\"view\"],\"relatorios_comercial\":[\"view\",\"adesoes\",\"atendimento_sac\",\"oportunidades\",\"conversoes_funil\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasapagar\",\"contasareceber_produtos\",\"faturamento\",\"relatorios_fechamento_caixa\",\"inadimplentes\",\"lancamento_equipe\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"escalas_equipes\",\"itens_pedidos\",\"projeto_produtosservicos\"],\"representantes\":[\"view\",\"add\",\"edit\"],\"reservardatas\":[\"view\",\"add\",\"edit\",\"delete\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\",\"add\",\"edit\"],\"tipoprojetos\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"acervo\":[\"view\"],\"releasenotes\":[\"view\"]}', '2017-08-18 14:09:12', '2021-06-09 11:26:13');
INSERT INTO `grupos` VALUES (5, 'Aplicativo (Vendedor)', '{\"tickets\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"dashboard\":[\"view\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2017-08-18 14:09:12', '2020-04-16 10:39:19');
INSERT INTO `grupos` VALUES (6, 'Financeiro Casa', '{\"carteiras\":[\"view\",\"add\",\"edit\"],\"centrodecustos\":[\"view\"],\"conciliacao\":[\"view\"],\"concorrentes\":[\"view\"],\"pagarcontas\":[\"view\",\"add\",\"edit\",\"alterar_troco\"],\"pc_equipes\":[\"view\",\"edit\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"emitir_recibos\",\"enviar_comprovantes\"],\"receberprodutos\":[\"view\",\"add\",\"edit\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\"],\"cursos\":[\"view\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"view\"],\"contratos\":[\"view\",\"add\",\"edit\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fluxocaixa\":[\"view\"],\"formapagamentos\":[\"view\"],\"fornecedores\":[\"view\"],\"dadosbancarios\":[\"view\"],\"inadimplentes\":[\"view\"],\"instituicoes\":[\"view\"],\"locais\":[\"view\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\"],\"pacotes\":[\"view\",\"add\",\"edit\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"delete\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"boletos_lote\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\",\"edit\"],\"eventos\":[\"view\",\"add\",\"edit\"],\"evento_equipes\":[\"view\",\"add\",\"edit\",\"delete\",\"gerar_ordem\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"add\",\"edit\"],\"planos_cortesias\":[\"view\",\"add\",\"edit\"],\"planos_produtos\":[\"view\",\"add\",\"edit\"],\"produtovendas\":[\"view\",\"add\",\"edit\"],\"despesas\":[\"view\",\"edit\"],\"recebedores\":[\"view\",\"add\",\"edit\"],\"relatorios_comercial\":[\"view\",\"atendimento_sac\",\"oportunidades\",\"conversoes_vendedores\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasapagar\",\"relatorios_fechamento_caixa\",\"inadimplentes\",\"lancamento_equipe\",\"renegociacoes\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"adesoes\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_resumo_financeiro\"],\"representantes\":[\"view\",\"add\",\"edit\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\",\"add\",\"edit\"],\"tipoprojetos\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2017-09-28 08:56:26', '2020-03-05 15:18:08');
INSERT INTO `grupos` VALUES (7, 'Financeiro Central', '{\"carteiras\":[\"view\",\"add\",\"edit\"],\"centrodecustos\":[\"view\",\"add\",\"edit\"],\"conciliacao\":[\"view\"],\"concorrentes\":[\"view\",\"add\",\"edit\"],\"pagarcontas\":[\"view\",\"add\",\"edit\"],\"pc_equipes\":[\"view\",\"edit\",\"delete\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"alterar_pagos\",\"emitir_recibos\",\"enviar_comprovantes\"],\"receberprodutos\":[\"view\",\"add\",\"edit\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"view\"],\"contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fluxocaixa\":[\"view\"],\"formapagamentos\":[\"view\",\"add\",\"edit\"],\"fornecedores\":[\"view\",\"add\",\"edit\"],\"dadosbancarios\":[\"view\",\"add\",\"edit\",\"delete\"],\"inadimplentes\":[\"view\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\",\"add\",\"edit\"],\"pacotes\":[\"view\",\"add\",\"edit\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"delete\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"boletos_lote\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\",\"edit\",\"delete\"],\"eventos\":[\"view\",\"add\",\"edit\",\"delete\"],\"evento_equipes\":[\"view\",\"add\",\"edit\",\"delete\",\"gerar_ordem\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"add\",\"edit\"],\"planos_cortesias\":[\"view\",\"add\",\"edit\",\"delete\"],\"planos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"produtovendas\":[\"view\",\"add\",\"edit\",\"delete\"],\"despesas\":[\"view\",\"edit\"],\"recebedores\":[\"view\",\"add\",\"edit\"],\"relatorios_comercial\":[\"view\",\"atendimento_sac\",\"oportunidades\",\"conversoes_vendedores\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasapagar\",\"relatorios_fechamento_caixa\",\"inadimplentes\",\"lancamento_equipe\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"adesoes\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\"],\"relatorios_outros\":[\"view\",\"acessos_portal\",\"envios_emails\"],\"representantes\":[\"view\",\"add\",\"edit\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\",\"add\",\"edit\"],\"tipoprojetos\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2017-09-28 08:59:03', '2020-03-05 15:18:22');
INSERT INTO `grupos` VALUES (8, 'Ger. Convidados', '{\"convidados\":[\"view\",\"add\",\"edit\",\"delete\"],\"dashboard\":[\"view\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"],\"tickets\":[\"view\",\"add\",\"edit\",\"definir_prioridades\"]}', '2018-05-11 16:58:48', '2020-03-05 15:18:49');
INSERT INTO `grupos` VALUES (9, 'Estoque ', '{\"estoques\":[\"view\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"dashboard\":[\"view\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2018-06-12 15:07:07', '2020-04-16 10:39:48');
INSERT INTO `grupos` VALUES (10, 'Planejamento', '{\"pagarcontas\":[\"view\",\"add\",\"edit\"],\"pc_equipes\":[\"view\",\"edit\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"emitir_recibos\",\"enviar_comprovantes\"],\"receberprodutos\":[\"view\",\"add\",\"edit\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_evento\",\"view\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"edit\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fornecedores\":[\"view\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"delete\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"boletos_lote\",\"importar\",\"migrar\",\"convidados\",\"fichas_identificacao\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\",\"edit\"],\"eventos\":[\"view\",\"add\",\"edit\"],\"evento_equipes\":[\"view\",\"add\",\"edit\",\"delete\",\"gerar_ordem\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"edit\"],\"planos_cortesias\":[\"view\",\"add\",\"edit\",\"delete\"],\"planos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"produtovendas\":[\"view\",\"add\",\"edit\",\"delete\"],\"despesas\":[\"view\"],\"relatorios_comercial\":[\"view\",\"atendimento_sac\",\"oportunidades\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasapagar\",\"contasareceber_produtos\",\"faturamento\",\"inadimplentes\",\"lancamento_equipe\",\"renegociacoes\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"escalas_equipes\",\"itens_pedidos\",\"projeto_produtosservicos\"],\"reservardatas\":[\"view\",\"add\",\"edit\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\",\"add\",\"edit\"],\"tipoprojetos\":[\"view\"],\"configs\":[\"view\"],\"acervo\":[\"view\"],\"releasenotes\":[\"view\"]}', '2019-01-02 12:28:00', '2020-12-10 13:44:13');
INSERT INTO `grupos` VALUES (11, 'Secret. de Vendas', '{\"pagarcontas\":[\"view\",\"add\",\"edit\"],\"pc_equipes\":[\"view\",\"edit\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"emitir_recibos\",\"enviar_comprovantes\"],\"receberprodutos\":[\"view\",\"add\",\"edit\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_evento\",\"view\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"edit\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fornecedores\":[\"view\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"delete\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"boletos_lote\",\"importar\",\"migrar\",\"convidados\",\"fichas_identificacao\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\",\"edit\"],\"eventos\":[\"view\",\"add\",\"edit\"],\"evento_equipes\":[\"view\",\"add\",\"edit\",\"delete\",\"gerar_ordem\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"add\",\"edit\"],\"planos_cortesias\":[\"view\",\"add\",\"edit\",\"delete\"],\"planos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"produtovendas\":[\"view\",\"add\",\"edit\",\"delete\"],\"despesas\":[\"view\"],\"ranking\":[\"view\"],\"relatorios_comercial\":[\"view\",\"atendimento_sac\",\"oportunidades\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasapagar\",\"contasareceber_produtos\",\"faturamento\",\"inadimplentes\",\"lancamento_equipe\",\"renegociacoes\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"adesoes\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"escalas_equipes\",\"itens_pedidos\",\"projeto_produtosservicos\"],\"reservardatas\":[\"view\",\"add\",\"edit\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\",\"add\",\"edit\"],\"tipoprojetos\":[\"view\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2019-07-22 13:39:47', '2019-07-22 13:53:42');
INSERT INTO `grupos` VALUES (12, 'Diretor', '{\"api_bi\":[\"view\"],\"custos\":[\"view\",\"boxbgt\",\"boxreal\",\"custoclass1\",\"custofornecedores\",\"custorealxorcado\"],\"despesasop\":[\"view\",\"boxbgt\",\"boxreal\",\"despesasclass2\",\"despesacentrodecusto\",\"despesasfornecedores\",\"despesasrealxorcado\"],\"dre\":[\"view\",\"boxresultado\",\"resultadoliqmes\",\"dre\",\"despesasdre\",\"resultadosdre\",\"dreclass2\"],\"fluxodecaixa\":[\"view\",\"fluxorealorc\",\"fluxoentrada\",\"fluxosaida\",\"fluxofonte\",\"fluxorealorctot\"],\"investimentos\":[\"view\",\"investdre2\",\"investchart\",\"investpll\",\"investemprestimos\"],\"realxorcado\":[\"view\",\"vendabruta\",\"boxbgt\",\"boxreal\",\"receitabruta\",\"custos\",\"vendabrutadre2\",\"despesasgerais\",\"pessoal\",\"receitaop\",\"ocupacao\",\"terceiros\"],\"realizacoes\":[\"view\",\"receitamlb\",\"dre\",\"receita\",\"realizacao\",\"detalhamento\",\"convidados\"],\"vendasticket\":[\"view\",\"vendasticketmedio\",\"voltotalvendas\",\"contratosvendidos\"],\"mkt_afiliados\":[\"view\"],\"mkt_leads\":[\"view\"],\"mkt_origem\":[\"view\"],\"mkt_tempo\":[\"view\"],\"mkt_vendas\":[\"view\"],\"campanhasbeneficios\":[\"view\",\"add\",\"edit\"],\"campbenef_indicacoes\":[\"view\",\"edit\"],\"carteiras\":[\"view\",\"add\",\"edit\"],\"centrodecustos\":[\"view\",\"add\",\"edit\"],\"conciliacao\":[\"view\"],\"concorrentes\":[\"view\",\"add\",\"edit\"],\"pagarcontas\":[\"view\",\"add\",\"edit\",\"alterar_pagos\",\"alterar_troco\"],\"pc_equipes\":[\"view\",\"edit\",\"delete\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"alterar_pagos\",\"emitir_recibos\",\"enviar_comprovantes\"],\"receberprodutos\":[\"view\",\"add\",\"edit\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\",\"permitir_alterar_vendedor\",\"permitir_descartar\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"resumo_evento\",\"view\"],\"contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"edit\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fluxocaixa\":[\"view\"],\"formapagamentos\":[\"view\",\"add\",\"edit\"],\"fornecedores\":[\"view\",\"add\",\"edit\"],\"dadosbancarios\":[\"view\",\"add\",\"edit\",\"delete\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"permitir_alterar_vendedor\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\",\"add\",\"edit\"],\"pacotes\":[\"view\",\"add\",\"edit\",\"editar_valor\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\",\"delete\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\",\"block_edit_nid\"],\"atendimentos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"delete\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"boletos_lote\",\"importar\",\"migrar\",\"convidados\",\"fichas_identificacao\"],\"projeto_contratos\":[\"view\",\"add\",\"edit\"],\"projeto_contratos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"regrasantecipacao_contratos\":[\"view\",\"add\",\"edit\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\",\"edit\",\"delete\"],\"eventos\":[\"view\",\"add\",\"edit\",\"delete\"],\"evento_equipes\":[\"view\",\"add\",\"edit\",\"delete\",\"gerar_ordem\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"add\",\"edit\"],\"planos_cortesias\":[\"view\",\"add\",\"edit\",\"delete\",\"edit_approve\"],\"planos_produtos\":[\"view\",\"add\",\"edit\",\"delete\",\"edit_approve\"],\"regrasantecipacao_planos\":[\"view\",\"add\",\"edit\",\"delete\"],\"planos_regrapagamentos\":[\"view\",\"add\",\"delete\",\"split\",\"historico\",\"transferencias\",\"saques\"],\"produtovendas\":[\"view\",\"add\",\"edit\",\"delete\"],\"despesas\":[\"view\",\"edit\"],\"ranking\":[\"view\"],\"relatorios_acessos\":[\"view\"],\"relatorios_afiliados\":[\"view\",\"cadastros\",\"indicacoes\"],\"relatorios_cobrancas\":[\"view\",\"quantidade\",\"valor\"],\"relatorios_comercial\":[\"view\",\"adesoes\",\"atendimento_sac\",\"oportunidades\",\"conversoes_funil\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"bordero\",\"contasapagar\",\"contasareceber_produtos\",\"faturamento\",\"relatorios_fechamento_caixa\",\"inadimplentes\",\"lancamento_equipe\",\"relatorios_saldosaques\",\"pacotes_precosvendidos\",\"renegociacoes\",\"vendasprodutos\",\"vendasopcionais\"],\"relatorios_formaturas\":[\"view\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"escalas_equipes\",\"itens_pedidos\",\"projeto_produtosservicos\"],\"representantes\":[\"view\",\"add\",\"edit\"],\"reservardatas\":[\"view\",\"add\",\"edit\",\"delete\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\",\"add\",\"edit\"],\"tipoprojetos\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"acervo\":[\"view\"],\"releasenotes\":[\"view\"]}', '2019-10-16 19:16:59', '2020-10-22 18:23:37');
INSERT INTO `grupos` VALUES (13, 'Jurídico', '{\"contratos\":[\"view\",\"edit\"],\"equipes\":[\"view\",\"edit\"],\"equipe_membros\":[\"view\",\"edit\"],\"formapagamentos\":[\"view\"],\"pacotes\":[\"view\",\"edit\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\"],\"projetos_clientes\":[\"view\",\"edit\",\"desistencia\",\"boletos_lote\",\"fichas_identificacao\"],\"diariodebordos\":[\"view\",\"add\",\"edit\"],\"eventos\":[\"view\",\"edit\"],\"evento_equipes\":[\"view\",\"edit\"],\"gradesfinanceiras\":[\"view\",\"ver_boletos\",\"inativar_parcelas\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"ver_boletos\",\"inativar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"edit\"],\"projeto_contratos\":[\"view\",\"edit\"],\"projeto_contratos_produtos\":[\"view\",\"edit\"],\"relatorios_comercial\":[\"view\",\"atendimento_sac\",\"oportunidades\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasareceber_produtos\",\"faturamento\",\"inadimplentes\",\"lancamento_equipe\",\"renegociacoes\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"adesoes\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"escalas_equipes\",\"itens_pedidos\",\"projeto_produtosservicos\"],\"representantes\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"dashboard\":[\"view\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2020-01-30 10:34:06', '2020-02-03 09:43:35');
INSERT INTO `grupos` VALUES (14, 'Marketing', '{\"concorrentes\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"resumo_evento\",\"view\"],\"locais\":[\"view\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\",\"add\",\"edit\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"boletos_lote\"],\"diariodebordos\":[\"view\",\"add\",\"edit\"],\"eventos\":[\"view\",\"add\",\"edit\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\"],\"planos\":[\"view\",\"edit\"],\"planos_cortesias\":[\"view\",\"edit\"],\"planos_produtos\":[\"view\",\"edit\"],\"produtovendas\":[\"view\",\"add\",\"edit\"],\"relatorios_comercial\":[\"view\",\"atendimento_sac\",\"oportunidades\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_formaturas\":[\"view\",\"adesoes\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"escalas_equipes\",\"itens_pedidos\"],\"representantes\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2020-03-19 11:49:46', '2020-03-19 13:30:10');
INSERT INTO `grupos` VALUES (15, 'Financeiro (Cobrança)', '{\"dashboard\":[\"calendario\",\"clientes_inadimplentes\",\"view\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"boletos_lote\"],\"diariodebordos\":[\"view\"],\"eventos\":[\"view\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"inativar_parcelas\",\"renegociar_parcelas\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"inativar_parcelas\",\"renegociar_parcelas\"],\"relatorios_financeiro\":[\"view\",\"contasareceber_produtos\",\"inadimplentes\",\"renegociacoes\"],\"relatorios_formaturas\":[\"view\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"itens_pedidos\",\"projeto_produtosservicos\"],\"reunioes\":[\"view\",\"add\",\"edit\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"releasenotes\":[\"view\"]}', '2020-04-21 14:27:54', '2020-04-29 15:11:03');
INSERT INTO `grupos` VALUES (16, 'Cobrança - Festiva', '{\"api_bi\":[\"view\"],\"realizacoes\":[\"view\",\"receitamlb\",\"dre\",\"receita\",\"realizacao\",\"detalhamento\",\"convidados\"],\"campanhasbeneficios\":[\"view\",\"add\",\"edit\"],\"campbenef_indicacoes\":[\"view\",\"edit\"],\"carteiras\":[\"view\",\"add\",\"edit\"],\"centrodecustos\":[\"view\",\"add\",\"edit\"],\"conciliacao\":[\"view\"],\"concorrentes\":[\"view\",\"add\",\"edit\"],\"pc_equipes\":[\"view\",\"edit\",\"delete\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"emitir_recibos\",\"enviar_comprovantes\",\"visualizar_todos_registros\"],\"receberprodutos\":[\"view\",\"add\",\"edit\",\"alterar_pagos\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"resumo_evento\",\"view\"],\"contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"edit\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fluxocaixa\":[\"view\"],\"formapagamentos\":[\"view\",\"add\",\"edit\"],\"fornecedores\":[\"view\"],\"dadosbancarios\":[\"view\"],\"arquivoretorno\":[\"view\",\"edit\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\"],\"pacotes\":[\"view\",\"add\",\"edit\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\",\"block_edit_nid\"],\"atendimentos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"importar\",\"migrar\",\"convidados\",\"fichas_identificacao\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"inativar_parcelas\",\"renegociar_parcelas\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"renegociar_parcelas\"],\"planos\":[\"view\"],\"planos_cortesias\":[\"view\"],\"planos_produtos\":[\"view\"],\"regrasantecipacao_planos\":[\"view\"],\"ranking\":[\"view\"],\"ranking_valor\":[\"view\"],\"recebedores\":[\"view\",\"add\",\"edit\"],\"relatorios_acessos\":[\"view\"],\"relatorios_afiliados\":[\"view\",\"cadastros\",\"indicacoes\"],\"relatorios_cobrancas\":[\"view\",\"quantidade\",\"valor\",\"carteira_cobranca\",\"indicadores_cobranca\"],\"relatorios_comercial\":[\"view\",\"adesoes\",\"atendimento_sac\",\"oportunidades\",\"conversoes_funil\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasareceber_produtos\",\"faturamento\",\"relatorios_fechamento_caixa\",\"inadimplentes\",\"lancamento_equipe\",\"pacotes_precosvendidos\",\"renegociacoes\",\"vendasprodutos\",\"vendasopcionais\"],\"relatorios_formaturas\":[\"view\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\"],\"representantes\":[\"view\"],\"reservardatas\":[\"view\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\"],\"tipoprojetos\":[\"view\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"acervo\":[\"view\"],\"releasenotes\":[\"view\"]}', '2021-01-05 11:17:10', '2021-01-06 18:05:10');
INSERT INTO `grupos` VALUES (17, 'Cobrança - Produtos', '{\"api_bi\":[\"view\"],\"realizacoes\":[\"view\",\"receitamlb\",\"dre\",\"receita\",\"realizacao\",\"detalhamento\",\"convidados\"],\"campanhasbeneficios\":[\"view\",\"add\",\"edit\"],\"campbenef_indicacoes\":[\"view\",\"edit\"],\"carteiras\":[\"view\",\"add\",\"edit\"],\"centrodecustos\":[\"view\",\"add\",\"edit\"],\"conciliacao\":[\"view\"],\"concorrentes\":[\"view\",\"add\",\"edit\"],\"pagarcontas\":[\"view\",\"add\",\"edit\",\"baixa_lote\",\"procedimento_lote\",\"visualizar_todos_registros\"],\"pc_equipes\":[\"view\",\"edit\",\"delete\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"emitir_recibos\",\"enviar_comprovantes\",\"visualizar_todos_registros\"],\"receberprodutos\":[\"view\",\"add\",\"edit\",\"alterar_pagos\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"resumo_evento\",\"view\"],\"contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"edit\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fluxocaixa\":[\"view\"],\"formapagamentos\":[\"view\",\"add\",\"edit\"],\"fornecedores\":[\"view\"],\"dadosbancarios\":[\"view\"],\"arquivoretorno\":[\"view\",\"edit\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\"],\"pacotes\":[\"view\",\"add\",\"edit\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\",\"block_edit_nid\"],\"atendimentos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"importar\",\"migrar\",\"convidados\",\"fichas_identificacao\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"inativar_parcelas\",\"renegociar_parcelas\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"renegociar_parcelas\"],\"planos\":[\"view\"],\"planos_cortesias\":[\"view\"],\"planos_produtos\":[\"view\"],\"regrasantecipacao_planos\":[\"view\"],\"ranking\":[\"view\"],\"ranking_valor\":[\"view\"],\"recebedores\":[\"view\",\"add\",\"edit\"],\"relatorios_acessos\":[\"view\"],\"relatorios_afiliados\":[\"view\",\"cadastros\",\"indicacoes\"],\"relatorios_cobrancas\":[\"view\",\"quantidade\",\"valor\",\"carteira_cobranca\",\"indicadores_cobranca\"],\"relatorios_comercial\":[\"view\",\"adesoes\",\"atendimento_sac\",\"oportunidades\",\"conversoes_funil\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasareceber_produtos\",\"faturamento\",\"relatorios_fechamento_caixa\",\"inadimplentes\",\"lancamento_equipe\",\"pacotes_precosvendidos\",\"renegociacoes\",\"vendasprodutos\",\"vendasopcionais\"],\"relatorios_formaturas\":[\"view\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\"],\"representantes\":[\"view\"],\"reservardatas\":[\"view\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\"],\"tipoprojetos\":[\"view\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"acervo\":[\"view\"],\"releasenotes\":[\"view\"]}', '2021-01-05 11:18:22', NULL);
INSERT INTO `grupos` VALUES (18, 'Suporte TI', '{\"dashboard\":[\"calendario\",\"view\"],\"users\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"tickets\":[\"view\"],\"acervo\":[\"view\"],\"releasenotes\":[\"view\"]}', '2021-04-05 14:36:08', '2021-04-05 14:36:25');
INSERT INTO `grupos` VALUES (19, 'Fornecedores', '{\"pagarcontas\":[\"view\",\"add\",\"edit\",\"baixa_lote\",\"procedimento_lote\",\"alterar_pagos\",\"lancamentos_retroativos\",\"liberar_status\",\"alterar_registro_mes_nao_corrente\",\"alterar_troco\",\"visualizar_detalhes_listagem\",\"visualizar_todos_registros\",\"desfazer_conciliacao\",\"visualizar_pagamento_terceiros\",\"pagamento_fornecedor\"],\"pc_equipes\":[\"view\",\"add\",\"edit\"],\"configs\":[\"view\"],\"dashboard\":[\"view\"],\"tickets\":[\"view\"],\"acervo\":[\"view\"],\"releasenotes\":[\"view\"]}', '2021-08-27 12:07:14', NULL);
INSERT INTO `grupos` VALUES (20, 'Gerente Casa de Festa', '{\"carteiras\":[\"view\",\"add\",\"edit\"],\"centrodecustos\":[\"view\",\"add\",\"edit\"],\"conciliacao\":[\"view\"],\"concorrentes\":[\"view\",\"add\",\"edit\"],\"pagarcontas\":[\"view\",\"add\",\"edit\",\"procedimento_lote\",\"liberar_status\",\"visualizar_detalhes_listagem\",\"visualizar_todos_registros\"],\"pc_equipes\":[\"view\",\"add\",\"edit\"],\"recebercontas\":[\"view\",\"add\",\"edit\",\"liberar_status\",\"emitir_recibos\",\"enviar_comprovantes\",\"visualizar_detalhes_listagem\",\"visualizar_todos_registros\"],\"receberprodutos\":[\"view\",\"add\",\"edit\",\"liberar_status\"],\"controlecheques\":[\"view\",\"add\",\"edit\"],\"contatos\":[\"view\",\"add\",\"edit\",\"permitir_alterar_vendedor\"],\"cursos\":[\"view\",\"add\",\"edit\"],\"dashboard\":[\"calendario\",\"resumo_mes\",\"clientes_inadimplentes\",\"resumo_evento\",\"view\"],\"contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"equipes\":[\"view\",\"add\",\"edit\"],\"equipe_membros\":[\"view\",\"add\",\"edit\"],\"estoques\":[\"view\",\"edit\",\"entrada\",\"saida\",\"produtos\",\"categorias\",\"movimentacao\"],\"fluxocaixa\":[\"view\"],\"formapagamentos\":[\"view\",\"add\",\"edit\"],\"fornecedores\":[\"view\",\"add\",\"edit\"],\"dadosbancarios\":[\"view\",\"add\",\"edit\"],\"instituicoes\":[\"view\",\"add\",\"edit\"],\"locais\":[\"view\",\"add\",\"edit\"],\"oportunidades\":[\"view\",\"edit\",\"permitir_alterar_vendedor\",\"questionarios\",\"historico\",\"or\\u00e7amentos\"],\"campanhas\":[\"view\",\"add\",\"edit\"],\"pacotes\":[\"view\",\"add\",\"edit\",\"editar_valor\"],\"vendas\":[\"view\",\"volume_anual\",\"total_vendas\",\"ranking_anual\",\"detalhamento_vendas\",\"dias_vendidos\",\"origem\"],\"pedidos\":[\"view\",\"add\",\"edit\",\"delete\"],\"aditivo_contratual\":[\"view\",\"add\",\"edit\",\"delete\"],\"produtos\":[\"view\",\"edit\"],\"projetos\":[\"view\",\"edit\"],\"atendimentos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projetos_clientes\":[\"view\",\"add\",\"edit\",\"delete\",\"configs_plano_adesao\",\"acesso_portal\",\"redefinir_senha\",\"desistencia\",\"recibo_quitacao\",\"boletos_lote\",\"importar\",\"convidados\",\"fichas_identificacao\"],\"projeto_contratos\":[\"view\",\"add\",\"edit\"],\"projeto_contratos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"regrasantecipacao_contratos\":[\"view\",\"add\",\"edit\",\"delete\"],\"projeto_convidados\":[\"view\"],\"diariodebordos\":[\"view\",\"add\",\"edit\",\"delete\"],\"eventos\":[\"view\",\"add\",\"edit\",\"delete\"],\"evento_equipes\":[\"view\",\"add\",\"edit\",\"delete\",\"gerar_ordem\"],\"gradesfinanceiras\":[\"view\",\"gerar_cobranca\",\"cobranca_cartao\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\",\"imprimir_comprovantes\",\"exibir_residuos\",\"exibir_inativas\"],\"gradeprodutos\":[\"view\",\"gerar_cobranca\",\"ver_boletos\",\"inativar_parcelas\",\"renegociar_parcelas\",\"segunda_via\"],\"planos\":[\"view\",\"add\",\"edit\"],\"planos_cortesias\":[\"view\",\"add\",\"edit\",\"delete\"],\"planos_produtos\":[\"view\",\"add\",\"edit\",\"delete\"],\"regrasantecipacao_planos\":[\"view\",\"add\",\"edit\"],\"produtovendas\":[\"view\",\"add\",\"edit\",\"delete\"],\"despesas\":[\"view\",\"edit\"],\"ranking\":[\"view\"],\"relatorios_comercial\":[\"view\",\"adesoes\",\"atendimento_sac\",\"oportunidades\",\"conversoes_funil\",\"conversoes_vendedores\",\"datas_disponiveis\",\"projetos\",\"previsoes_agendamento\"],\"relatorios_financeiro\":[\"view\",\"contasapagar\",\"contasareceber_produtos\",\"faturamento\",\"relatorios_fechamento_caixa\",\"inadimplentes\",\"lancamento_equipe\",\"vendasprodutos\"],\"relatorios_formaturas\":[\"view\",\"desistencias\",\"eventos\",\"formandos\",\"projetos\",\"projetos_detalhamento_planos\",\"projetos_resumo_financeiro\"],\"relatorios_planejamento\":[\"view\",\"acessos_portal\",\"escalas_equipes\",\"itens_pedidos\",\"projeto_produtosservicos\"],\"representantes\":[\"view\",\"add\",\"edit\"],\"reservardatas\":[\"view\",\"add\",\"edit\",\"delete\"],\"resumodia\":[\"view\"],\"reunioes\":[\"view\",\"add\",\"edit\",\"delete\"],\"reuniao_tipos\":[\"view\",\"add\",\"edit\",\"delete\"],\"tickets\":[\"view\",\"add\",\"edit\"],\"tipoeventos\":[\"view\",\"add\",\"edit\"],\"tipoprojetos\":[\"view\",\"add\",\"edit\"],\"users\":[\"view\",\"edit\"],\"cardvendas\":[\"view\",\"edit\"],\"configs\":[\"view\"],\"acervo\":[\"view\"],\"releasenotes\":[\"view\"]}', '2022-08-09 17:53:52', NULL);

-- ----------------------------
-- Table structure for history_emails_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `history_emails_blacklist`;
CREATE TABLE `history_emails_blacklist`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `db_empresa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `library` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `event` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `timestamp` int(20) NULL DEFAULT NULL,
  `json_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `datecreate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17790 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of history_emails_blacklist
-- ----------------------------
INSERT INTO `history_emails_blacklist` VALUES (258, 'marienacza@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590140, '{\"email\":\"marienacza@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE2NA\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.164\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590140}', '2021-10-07 04:02:24');
INSERT INTO `history_emails_blacklist` VALUES (259, 'yanrodrigues5260@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590135, '{\"email\":\"yanrodrigues5260@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTI5\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.29\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590135}', '2021-10-07 04:02:25');
INSERT INTO `history_emails_blacklist` VALUES (260, 'vanessahalyne9@hgmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590140, '{\"email\":\"vanessahalyne9@hgmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE2Nw\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.167\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590140}', '2021-10-07 04:02:25');
INSERT INTO `history_emails_blacklist` VALUES (261, 'bhellinhah@gmail.com', NULL, 'sendgrid', NULL, 'bounce', '149.72.244.179', 1633590141, '{\"email\":\"bhellinhah@gmail.com\",\"event\":\"bounce\",\"ip\":\"149.72.244.179\",\"reason\":\"452 4.2.2 The email account that you tried to reach is over quota. Please direct the recipient to https:\\/\\/support.google.com\\/mail\\/?p=OverQuotaTemp j20si13543573edj.2 - gsmtp\",\"sg_event_id\":\"Ym91bmNlLTAtMTQzMTQxNzAtRGo3LTlfMVVRV2VBcE1KRUFTUEVaQS0xNDU\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.145\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"status\":\"4.2.2\",\"timestamp\":1633590141,\"tls\":1,\"type\":\"blocked\"}', '2021-10-07 04:02:25');
INSERT INTO `history_emails_blacklist` VALUES (262, 'freitasedilson1996@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590142, '{\"email\":\"freitasedilson1996@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTIyMw\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.223\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590142}', '2021-10-07 04:02:25');
INSERT INTO `history_emails_blacklist` VALUES (263, 'gabriveigadrummond@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590136, '{\"email\":\"gabriveigadrummond@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTUx\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.51\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590136}', '2021-10-07 04:02:26');
INSERT INTO `history_emails_blacklist` VALUES (264, 'hermesmax31@gmail.com', NULL, 'sendgrid', NULL, 'bounce', '149.72.244.179', 1633590136, '{\"email\":\"hermesmax31@gmail.com\",\"event\":\"bounce\",\"ip\":\"149.72.244.179\",\"reason\":\"452 4.2.2 The email account that you tried to reach is over quota. Please direct the recipient to https:\\/\\/support.google.com\\/mail\\/?p=OverQuotaTemp z10si5386857edm.458 - gsmtp\",\"sg_event_id\":\"Ym91bmNlLTAtMTQzMTQxNzAtRGo3LTlfMVVRV2VBcE1KRUFTUEVaQS0zMQ\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.31\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"status\":\"4.2.2\",\"timestamp\":1633590136,\"tls\":1,\"type\":\"blocked\"}', '2021-10-07 04:02:26');
INSERT INTO `history_emails_blacklist` VALUES (265, 'amanda.nanda.123@outlook.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590140, '{\"email\":\"amanda.nanda.123@outlook.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE0MQ\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.141\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590140}', '2021-10-07 04:02:26');
INSERT INTO `history_emails_blacklist` VALUES (266, 'luizakk270@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590140, '{\"email\":\"luizakk270@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE0Ng\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.146\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590140}', '2021-10-07 04:02:26');
INSERT INTO `history_emails_blacklist` VALUES (267, 'meyvespedroso@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590140, '{\"email\":\"meyvespedroso@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE1Mw\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.153\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590140}', '2021-10-07 04:02:26');
INSERT INTO `history_emails_blacklist` VALUES (268, 'fernandagaspar52@outlook.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590141, '{\"email\":\"fernandagaspar52@outlook.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE4Nw\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.187\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590141}', '2021-10-07 04:02:26');
INSERT INTO `history_emails_blacklist` VALUES (269, 'moranatasha.nl4@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590138, '{\"email\":\"moranatasha.nl4@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTkz\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.93\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590138}', '2021-10-07 04:02:27');
INSERT INTO `history_emails_blacklist` VALUES (270, 'camilenedutreuil71@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590139, '{\"email\":\"camilenedutreuil71@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTEyMQ\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.121\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590139}', '2021-10-07 04:02:27');
INSERT INTO `history_emails_blacklist` VALUES (271, 'vanezsaroocha.lopes@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590139, '{\"email\":\"vanezsaroocha.lopes@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTEzNQ\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.135\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590139}', '2021-10-07 04:02:27');
INSERT INTO `history_emails_blacklist` VALUES (272, 'raphaella9@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590140, '{\"email\":\"raphaella9@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE0OA\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.148\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590140}', '2021-10-07 04:02:27');
INSERT INTO `history_emails_blacklist` VALUES (273, 'lanecristinac18@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590141, '{\"email\":\"lanecristinac18@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE4MQ\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.181\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590141}', '2021-10-07 04:02:27');
INSERT INTO `history_emails_blacklist` VALUES (274, 'izadias.d.m@g.mail.com', NULL, 'sendgrid', NULL, 'deferred', '', 1633590141, '{\"attempt\":\"0\",\"email\":\"izadias.d.m@g.mail.com\",\"event\":\"deferred\",\"response\":\"unable to get mx info: failed to get IPs from PTR record: lookup <nil>: unrecognized address\",\"sg_event_id\":\"ZGVmZXJyZWQtMC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE4MA\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.180\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590141,\"tls\":0}', '2021-10-07 04:02:27');
INSERT INTO `history_emails_blacklist` VALUES (275, 'alemidanaflavia07@gmail.com', NULL, 'sendgrid', NULL, 'dropped', '', 1633590141, '{\"email\":\"alemidanaflavia07@gmail.com\",\"event\":\"dropped\",\"reason\":\"Bounced Address\",\"sg_event_id\":\"ZHJvcC0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE5Mw\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.193\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590141}', '2021-10-07 04:02:27');
INSERT INTO `history_emails_blacklist` VALUES (276, 'izadias.d.m@g.mail.com', NULL, 'sendgrid', NULL, 'deferred', '', 1633590171, '{\"attempt\":\"1\",\"email\":\"izadias.d.m@g.mail.com\",\"event\":\"deferred\",\"response\":\"unable to get mx info: failed to get IPs from PTR record: lookup <nil>: unrecognized address\",\"sg_event_id\":\"ZGVmZXJyZWQtMS0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE4MA\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.180\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590171,\"tls\":0}', '2021-10-07 04:02:57');
INSERT INTO `history_emails_blacklist` VALUES (277, 'izadias.d.m@g.mail.com', NULL, 'sendgrid', NULL, 'deferred', '', 1633590231, '{\"attempt\":\"2\",\"email\":\"izadias.d.m@g.mail.com\",\"event\":\"deferred\",\"response\":\"unable to get mx info: failed to get IPs from PTR record: lookup <nil>: unrecognized address\",\"sg_event_id\":\"ZGVmZXJyZWQtMi0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE4MA\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.180\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590231,\"tls\":0}', '2021-10-07 04:03:58');
INSERT INTO `history_emails_blacklist` VALUES (278, 'izadias.d.m@g.mail.com', NULL, 'sendgrid', NULL, 'deferred', '', 1633590321, '{\"attempt\":\"3\",\"email\":\"izadias.d.m@g.mail.com\",\"event\":\"deferred\",\"response\":\"unable to get mx info: failed to get IPs from PTR record: lookup <nil>: unrecognized address\",\"sg_event_id\":\"ZGVmZXJyZWQtMy0xNDMxNDE3MC1EajctOV8xVVFXZUFwTUpFQVNQRVpBLTE4MA\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.180\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590321,\"tls\":0}', '2021-10-07 04:05:27');
INSERT INTO `history_emails_blacklist` VALUES (279, 'izadias.d.m@g.mail.com', NULL, 'sendgrid', NULL, 'bounce', '', 1633590441, '{\"email\":\"izadias.d.m@g.mail.com\",\"event\":\"bounce\",\"reason\":\"unable to get mx info: failed to get IPs from PTR record: lookup <nil>: unrecognized address\",\"sg_event_id\":\"Ym91bmNlLTQtMTQzMTQxNzAtRGo3LTlfMVVRV2VBcE1KRUFTUEVaQS0xODA\",\"sg_message_id\":\"Dj7-9_1UQWeApMJEASPEZA.filterdrecv-7bc86b958d-j46hl-1-615E9B76-36.180\",\"smtp-id\":\"<Dj7-9_1UQWeApMJEASPEZA@geopod-ismtpd-2-0>\",\"timestamp\":1633590441,\"tls\":0,\"type\":\"blocked\"}', '2021-10-07 04:07:27');
INSERT INTO `history_emails_blacklist` VALUES (399, 'comercial@vivaosonho.com.br', NULL, 'sendgrid', NULL, 'deferred', '149.72.244.179', 1633659669, '{\"attempt\":\"0\",\"category\":[\"wp_sendgrid_plugin\",\"\"],\"email\":\"comercial@vivaosonho.com.br\",\"event\":\"deferred\",\"ip\":\"149.72.244.179\",\"response\":\"451 4.7.1 Try again later\",\"sg_event_id\":\"ZGVmZXJyZWQtMC0xNDMxNDE3MC1qeEJFZ3dpVlFhbXdtc3gtaFhJdEhRLTA\",\"sg_message_id\":\"jxBEgwiVQamwmsx-hXItHQ.filterdrecv-55446c4d49-qtzhb-1-615FAB10-21.0\",\"smtp-id\":\"<jxBEgwiVQamwmsx-hXItHQ@ismtpd0057p1las1.sendgrid.net>\",\"timestamp\":1633659669,\"tls\":1}', '2021-10-07 23:21:12');
INSERT INTO `history_emails_blacklist` VALUES (400, 'comercial@vivaosonho.com.br', NULL, 'sendgrid', NULL, 'deferred', '149.72.244.179', 1633659700, '{\"attempt\":\"1\",\"category\":[\"wp_sendgrid_plugin\",\"\"],\"email\":\"comercial@vivaosonho.com.br\",\"event\":\"deferred\",\"ip\":\"149.72.244.179\",\"response\":\"451 4.7.1 Try again later\",\"sg_event_id\":\"ZGVmZXJyZWQtMS0xNDMxNDE3MC1qeEJFZ3dpVlFhbXdtc3gtaFhJdEhRLTA\",\"sg_message_id\":\"jxBEgwiVQamwmsx-hXItHQ.filterdrecv-55446c4d49-qtzhb-1-615FAB10-21.0\",\"smtp-id\":\"<jxBEgwiVQamwmsx-hXItHQ@ismtpd0057p1las1.sendgrid.net>\",\"timestamp\":1633659700,\"tls\":1}', '2021-10-07 23:21:42');

-- ----------------------------
-- Table structure for history_emails_spamreport
-- ----------------------------
DROP TABLE IF EXISTS `history_emails_spamreport`;
CREATE TABLE `history_emails_spamreport`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `db_empresa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `library` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `action` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `event` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `timestamp` int(20) NULL DEFAULT NULL,
  `json_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `datecreate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of history_emails_spamreport
-- ----------------------------
INSERT INTO `history_emails_spamreport` VALUES (8, 'mauriceia-gomes2011@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1635501498, '{\"email\":\"mauriceia-gomes2011@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1iZGU1MWYzMy0zODllLTExZWMtODJkNC1kMjMzYWM3MWMwMTg\",\"sg_message_id\":\"rdG3JsUyS8m-NOC9GjnaWQ.filterdrecv-55446c4d49-xldjr-1-617A4AFD-C1.65\",\"timestamp\":1635501498}', '2021-10-29 06:58:27');
INSERT INTO `history_emails_spamreport` VALUES (9, 'gil.gss@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1635505686, '{\"email\":\"gil.gss@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC03ZTdhZjhlZS0zOGE4LTExZWMtYTBhOS1jZGE4Y2M0YjdiOGM\",\"sg_message_id\":\"XkXY2eyeS5WVpy6RnH_3yQ.filterdrecv-55446c4d49-85qjv-1-617B9C60-102.128\",\"timestamp\":1635505686}', '2021-10-29 08:08:16');
INSERT INTO `history_emails_spamreport` VALUES (10, 'robsonfcbomba@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1635549546, '{\"email\":\"robsonfcbomba@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC05Y2RkNDZjYS0zOTBlLTExZWMtYWQyNS1jM2NlZDBmY2JhNDQ\",\"sg_message_id\":\"OanuQo3LTD6M6f5G3VCqVw.filterdrecv-5bff75c9b7-6nx5p-1-60A82DAE-59.0\",\"timestamp\":1635549546}', '2021-10-29 20:19:09');
INSERT INTO `history_emails_spamreport` VALUES (11, 'robsonfcbomba@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1635549563, '{\"email\":\"robsonfcbomba@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1hNmY5NmIwYi0zOTBlLTExZWMtYjZiYy05NDk3YTAyZDljMDk\",\"sg_message_id\":\"uGEweKe1Tn6gl4o4tQ0g8A.filterdrecv-77df4fc8dd-2zf76-1-60A83ECB-A.0\",\"timestamp\":1635549563}', '2021-10-29 20:19:26');
INSERT INTO `history_emails_spamreport` VALUES (12, 'robsonfcbomba@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1635549567, '{\"email\":\"robsonfcbomba@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1hOTM1NDg4Yi0zOTBlLTExZWMtOTRiNy05ZDBiMjQ0NzFlMzU\",\"sg_message_id\":\"I3-cwCL4QLW3qBnDu6caAA.filterdrecv-77df4fc8dd-fmlxq-1-60A83A33-E.0\",\"timestamp\":1635549567}', '2021-10-29 20:19:32');
INSERT INTO `history_emails_spamreport` VALUES (13, 'robsonfcbomba@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1635549568, '{\"email\":\"robsonfcbomba@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1hOWU1NzAxNi0zOTBlLTExZWMtYTY3My1iMmQ1OWNiNTljOGI\",\"sg_message_id\":\"tkNUIFmrS-W_ZY3JZ9MfGA.filterdrecv-5bff75c9b7-slvhr-1-60A83806-CC.0\",\"timestamp\":1635549568}', '2021-10-29 20:19:35');
INSERT INTO `history_emails_spamreport` VALUES (14, 'robsonfcbomba@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1635549572, '{\"email\":\"robsonfcbomba@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1hYzEzOWM4Yy0zOTBlLTExZWMtOTRjNC1jMjFkMTExZDlhNmQ\",\"sg_message_id\":\"O3xskxakRyabmdvoe6LYrg.filterdrecv-77df4fc8dd-zbn9p-1-60A83716-5.0\",\"timestamp\":1635549572}', '2021-10-29 20:19:37');
INSERT INTO `history_emails_spamreport` VALUES (15, 'dayana_joyce@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1636441642, '{\"email\":\"dayana_joyce@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1hZmI1MGFkNi00MTJiLTExZWMtYmExMS1kZmEzYTYwN2Y4MGM\",\"sg_message_id\":\"LHpRWbVQTHC1eZFa398NnA.filterdrecv-7bf5c69d5-5qwl9-1-618A1D00-34.427\",\"timestamp\":1636441642}', '2021-11-09 04:07:25');
INSERT INTO `history_emails_spamreport` VALUES (16, 'dayana_joyce@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1636441646, '{\"email\":\"dayana_joyce@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1iMWQzOWM3NC00MTJiLTExZWMtOWEyYS04OGMwMmI0MDRlY2M\",\"sg_message_id\":\"D5wjVEqzSG2EE-ljzaD4Yw.filterdrecv-7bf5c69d5-kwxgp-1-6186288E-9.453\",\"timestamp\":1636441646}', '2021-11-09 04:07:31');
INSERT INTO `history_emails_spamreport` VALUES (17, 'vilma.silva24@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1636657050, '{\"email\":\"vilma.silva24@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC0zOGI5ZjdhOS00MzIxLTExZWMtYmFjYS1mZTJlNTVkZjdjMTI\",\"sg_message_id\":\"rjoj0OqCRkmNbbBD_RxigA.filterdrecv-64fcb979b9-x2652-1-618D5B2B-45.0\",\"timestamp\":1636657050}', '2021-11-11 15:57:33');
INSERT INTO `history_emails_spamreport` VALUES (18, 'tsantanna@outlook.com.br', NULL, 'sendgrid', NULL, 'spamreport', '', 1637173185, '{\"email\":\"tsantanna@outlook.com.br\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1mMTBkYjI4Yi00N2QyLTExZWMtYTBhMC1iZTE3MThlYjI5NTU\",\"sg_message_id\":\"Yo5sNOT7SUa2dvG-GbdmzQ.filterdrecv-656998cfdd-ptszh-1-61923E69-F2.67\",\"timestamp\":1637173185}', '2021-11-17 15:19:51');
INSERT INTO `history_emails_spamreport` VALUES (19, 'karen.ktr@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1637250816, '{\"email\":\"karen.ktr@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1iMDg4MjI0NS00ODg3LTExZWMtODhmZS04ZGQ4NmJlMjBiYjA\",\"sg_message_id\":\"VeovzMnjSHyb26Nb0j1hbA.filterdrecv-64fcb979b9-8r2zw-1-6193B11E-2A.0\",\"timestamp\":1637250816}', '2021-11-18 12:53:40');
INSERT INTO `history_emails_spamreport` VALUES (20, 'lumiar.oliveira@outlook.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1638185353, '{\"email\":\"lumiar.oliveira@outlook.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC05NDIzNWNmMS01MTA3LTExZWMtODRmYy1kYWNmOWQ0ZDUwMmU\",\"sg_message_id\":\"sOFwoJmbSHGyUCIHq5bQ4g.filterdrecv-64fcb979b9-4vrtk-1-61A0867A-D8.142\",\"timestamp\":1638185353}', '2021-11-29 08:29:21');
INSERT INTO `history_emails_spamreport` VALUES (21, 'beatrizsouza.ssilva@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1638220779, '{\"email\":\"beatrizsouza.ssilva@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC0wZmE4NTQzZC01MTVhLTExZWMtOTIyNi1lODc5YmU2ZTBhOWQ\",\"sg_message_id\":\"37PobGxqTKeWl0Gx8z3Hyg.filterdrecv-p3iad2-76785d6cb5-xhs2q-18-60126130-10D.505\",\"timestamp\":1638220779}', '2021-11-29 18:19:41');
INSERT INTO `history_emails_spamreport` VALUES (22, 'beatrizsouza.ssilva@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1638220778, '{\"email\":\"beatrizsouza.ssilva@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC0wZjcxMjRmOC01MTVhLTExZWMtYTUwYy1kOThjOGIwYTg3MGM\",\"sg_message_id\":\"uLfu23I7TdOWfV-nH8-VJQ.filterdrecv-p3las1-c477c4585-jsjr4-19-602F6234-9E.739\",\"timestamp\":1638220778}', '2021-11-29 18:19:41');
INSERT INTO `history_emails_spamreport` VALUES (23, 'beatrizsouza.ssilva@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1638220780, '{\"email\":\"beatrizsouza.ssilva@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC0xMDVkYTMxZS01MTVhLTExZWMtOTE1YS1hNzA2NTk4YWNmMTI\",\"sg_message_id\":\"frlFohkGQoiKpWe3gM67bg.filterdrecv-p3las1-c477c4585-wnz97-18-603356B6-81.305\",\"timestamp\":1638220780}', '2021-11-29 18:19:44');
INSERT INTO `history_emails_spamreport` VALUES (24, 'beatrizsouza.ssilva@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1638220806, '{\"email\":\"beatrizsouza.ssilva@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC0xZmM4ZTJhMC01MTVhLTExZWMtOWZkOS1mZDNjODUyOGYzOWI\",\"sg_message_id\":\"zHvqErKJQnGaMppqck_CRw.filterdrecv-p3iad2-fdf5ff85d-7qm9x-18-6039EE39-3D.32\",\"timestamp\":1638220806}', '2021-11-29 18:20:09');
INSERT INTO `history_emails_spamreport` VALUES (25, 'beatrizsouza.ssilva@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1638220810, '{\"email\":\"beatrizsouza.ssilva@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC0yMTk5NTNmOC01MTVhLTExZWMtYTEwOC1lYjgzYTZjMjQ0MzQ\",\"sg_message_id\":\"G_E7sz5VSZORmE9uRIOHbw.filterdrecv-p3mdw1-7474cd8bfd-kfrsc-19-5FDC53B5-43.112\",\"timestamp\":1638220810}', '2021-11-29 18:20:16');
INSERT INTO `history_emails_spamreport` VALUES (26, 'beatrizsouza.ssilva@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1638220811, '{\"email\":\"beatrizsouza.ssilva@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC0yMjk0YWMyNy01MTVhLTExZWMtODY3ZC1mMzhkYTJhMWMxYjY\",\"sg_message_id\":\"8BmH_c2_QwKjYf4THUlyIg.filterdrecv-p3iad2-6544fb89f6-5b7wf-19-5FC9DEAC-2.147\",\"timestamp\":1638220811}', '2021-11-29 18:20:18');
INSERT INTO `history_emails_spamreport` VALUES (28, 'ana_cintra@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1641833988, '{\"email\":\"ana_cintra@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1iODJmZGU4Zi03MjM2LTExZWMtYTkxNS1iMjJlYWYwZDVkNjU\",\"sg_message_id\":\"vXIze5w0TaCW1cSxYTHQbA.filterdrecv-7bc86b958d-6sxkj-1-61DC1249-9A.128\",\"timestamp\":1641833988}', '2022-01-10 13:59:57');
INSERT INTO `history_emails_spamreport` VALUES (31, 'selmita1966@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1642408293, '{\"email\":\"selmita1966@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lMDc0YTkxOS03NzZmLTExZWMtOGFiZi1hNzc3YTQyNWMwYzI\",\"sg_message_id\":\"3HTNCYsqThi7CZdXTc3kxQ.filterdrecv-55446c4d49-l26zx-1-61E51471-74.388\",\"timestamp\":1642408293}', '2022-01-17 05:31:43');
INSERT INTO `history_emails_spamreport` VALUES (34, 'thiagoferreira00@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1645177989, '{\"email\":\"thiagoferreira00@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC05NDU0OWVjYy05MGEwLTExZWMtODVmNS1hOWE2NmJlNWExOGY\",\"sg_message_id\":\"gmPIsZ7GRT-ipnDQPSHYqg.filterdrecv-7bc86b958d-6sxkj-1-620F449A-D8.624\",\"timestamp\":1645177989}', '2022-02-18 06:53:12');
INSERT INTO `history_emails_spamreport` VALUES (36, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796458, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1jYTI3NjhjZi1iYWExLTExZWMtYThmNS04ZDljY2NiMTcxMjQ\",\"sg_message_id\":\"AMx6FITAQNilktVTXZmuPQ.filterdrecv-canary-55d9c75bdc-4x694-1-624AD073-9.183\",\"timestamp\":1649796458}', '2022-04-12 17:47:46');
INSERT INTO `history_emails_spamreport` VALUES (37, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796485, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1kYTRmNGViYS1iYWExLTExZWMtODM3ZS04MDNiY2U3MjU3NzA\",\"sg_message_id\":\"xAN-5dUtRPavqLoUNr1D8g.filterdrecv-7bf5c69d5-m2pn4-1-624AD028-1CD.184\",\"timestamp\":1649796485}', '2022-04-12 17:48:16');
INSERT INTO `history_emails_spamreport` VALUES (38, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796499, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lMmFlMDA3ZS1iYWExLTExZWMtYjAwYi1lNTgyOGNhODlhYjA\",\"sg_message_id\":\"8wy8UJn1TnS9RZ7pLiWDsw.filterdrecv-64fcb979b9-wkq8m-1-624AD07C-C1.183\",\"timestamp\":1649796499}', '2022-04-12 17:48:20');
INSERT INTO `history_emails_spamreport` VALUES (39, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796501, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lM2E5ZmUyZS1iYWExLTExZWMtYWVmZi1hNzZhN2FjMzYwOTM\",\"sg_message_id\":\"dyFC05WvRqeIjZl1V5nW9A.filterdrecv-7bf5c69d5-v7fwm-1-624AD091-62.182\",\"timestamp\":1649796501}', '2022-04-12 17:48:22');
INSERT INTO `history_emails_spamreport` VALUES (40, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796500, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lMzZkYTUwYS1iYWExLTExZWMtYjQ0MS1iZmU0N2E5MDI5NTk\",\"sg_message_id\":\"f5B3G2nuSNCg18i228C_DQ.filterdrecv-64fcb979b9-6vbpf-1-624AD0A6-6F.182\",\"timestamp\":1649796500}', '2022-04-12 17:48:27');
INSERT INTO `history_emails_spamreport` VALUES (41, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796497, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lMTVhNDliMS1iYWExLTExZWMtYjIzZS1iYzQ0NTdjN2U4YWQ\",\"sg_message_id\":\"Osu00i8VQ36DN_QgvL7SsQ.filterdrecv-7bf5c69d5-kwxgp-1-624AD033-B.183\",\"timestamp\":1649796497}', '2022-04-12 17:48:27');
INSERT INTO `history_emails_spamreport` VALUES (42, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796501, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lM2FhZmVlNi1iYWExLTExZWMtYmE5MS1iZmE1YjJlNGRlOTc\",\"sg_message_id\":\"O_ZbnkxNS9WPPvkIOnDYog.filterdrecv-7bf5c69d5-jxm6x-1-624AD09B-40.182\",\"timestamp\":1649796501}', '2022-04-12 17:48:31');
INSERT INTO `history_emails_spamreport` VALUES (43, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796503, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lNGY1NTA5NC1iYWExLTExZWMtYWJlZS1iNzAyMTIzYmExZGU\",\"sg_message_id\":\"f3yJbmf5RMGM3VmFnG_XkA.filterdrecv-75ff7b5ffb-t2q6v-1-624AD04B-EC.183\",\"timestamp\":1649796503}', '2022-04-12 17:48:31');
INSERT INTO `history_emails_spamreport` VALUES (44, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796513, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lYWNhMTEwNy1iYWExLTExZWMtYmFmZS04MzBlMjA3OTY4YTU\",\"sg_message_id\":\"6FS-qD1RRYazmq_YVxbzIg.filterdrecv-656998cfdd-xdv2f-1-624AD040-F3.183\",\"timestamp\":1649796513}', '2022-04-12 17:48:37');
INSERT INTO `history_emails_spamreport` VALUES (45, 'gabriela-oliveira.p@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1649796511, '{\"email\":\"gabriela-oliveira.p@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1lOWM3NDEzNy1iYWExLTExZWMtOWRmNC1lZTJkMDNhZjY1YWU\",\"sg_message_id\":\"yKl250ETRoivtGRDg5Z0Aw.filterdrecv-7bf5c69d5-rfl26-1-624AD087-10.183\",\"timestamp\":1649796511}', '2022-04-12 17:48:41');
INSERT INTO `history_emails_spamreport` VALUES (48, 'flor.marcelo.marcelinho@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1657027845, '{\"email\":\"flor.marcelo.marcelinho@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1hYzVhZDcwZC1mYzY2LTExZWMtYTI3NS1kZmY3MjQyZTA4Nzk\",\"sg_message_id\":\"7ESzebDvSDGNer8szZF1Cg.filterdrecv-7bc86b958d-n76s9-1-615D4A06-25.341\",\"timestamp\":1657027845}', '2022-07-05 10:30:54');
INSERT INTO `history_emails_spamreport` VALUES (49, 'flor.marcelo.marcelinho@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1657027877, '{\"email\":\"flor.marcelo.marcelinho@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1iZmJmOWYyZi1mYzY2LTExZWMtOTI1ZS1jMmFlYjQ2NmUxNTg\",\"sg_message_id\":\"em6BWoh_TO6d5veIsFZSHg.filterdrecv-7bc86b958d-g5ggb-1-61595569-14C.260\",\"timestamp\":1657027877}', '2022-07-05 10:31:23');
INSERT INTO `history_emails_spamreport` VALUES (50, 'flor.marcelo.marcelinho@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1657027883, '{\"email\":\"flor.marcelo.marcelinho@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC1jMzg3YTBlOS1mYzY2LTExZWMtOGEyZC05MGFhY2ZjODE0MDM\",\"sg_message_id\":\"5Z0rRL8ATk-D6-A8unSZmA.filterdrecv-64fcb979b9-8r2zw-1-615560F3-50.416\",\"timestamp\":1657027883}', '2022-07-05 10:31:26');
INSERT INTO `history_emails_spamreport` VALUES (54, 'angelatoprio@live.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1663003691, '{\"email\":\"angelatoprio@live.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC00NjhmM2E5MS0zMmMwLTExZWQtYWVlMS1hZTIxM2RiZjQyZjg\",\"sg_message_id\":\"6Uw3QRsCRBSgW1GFGhHN6A.filterdrecv-canary-7f47d9b8dd-szjwm-1-631F121B-53.191\",\"timestamp\":1663003691}', '2022-09-12 14:28:17');
INSERT INTO `history_emails_spamreport` VALUES (59, 'robertaniteroi@hotmail.com', NULL, 'sendgrid', NULL, 'spamreport', '', 1671790423, '{\"email\":\"robertaniteroi@hotmail.com\",\"event\":\"spamreport\",\"sg_event_id\":\"c3BhbXJlcG9ydC0xNDMxNDE3MC03YjAxZWQ2Mi04MmFhLTExZWQtOTdlMS04YjZjMDQ2MWM2ODU\",\"sg_message_id\":\"5WD9nmBqTBajcCrzbHBDxQ.filterdrecv-557d69979-7rrz6-1-63A55294-34.381\",\"timestamp\":1671790423}', '2022-12-23 07:13:47');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `empresas_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `empresa_id` int(11) NULL DEFAULT NULL,
  `usuarios_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bi_dre_classes_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jwt` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `is_staff` tinyint(1) NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `last_login_attempt` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date_joined` datetime(0) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_users`(`id`) USING BTREE,
  INDEX `idx_users_empresas`(`empresas_id`) USING BTREE,
  INDEX `idx_users_username`(`username`) USING BTREE,
  INDEX `idx_users_empresa`(`empresa_id`) USING BTREE,
  INDEX `idx_users_grupo`(`grupo_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin', '$2a$08$djFDenyN2pU0Cua0Cx6Oou9./pHBlaiZ6mYYNPCA6O582I2PcBtwi', 'contato@enterpriselegacy.local.br', '699,678,686', 678, NULL, NULL, 'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkZXJsb2JhY2tlbmQiLCJleHAiOjE2NDg3NTE2NjAsImlhdCI6MTY0ODc1MTM2MCwiaXNzIjoiZGVybG9iYWNrZW5kIiwianRpIjoiMTBlNzgwZGQtMWMzNS00N2FiLWIyYjEtMDhkN2U5MjU0NDZlIiwibmJmIjoxNjQ4NzUxMzU5LCJzdWIiOiIxIiwidHlwIjoiYWNjZXNzIn0.iWXUYSIzmRT1aeTllF9HNshzjS9K2kYzi40tJsoqNMoTarRM9AB3EKLAaL1cWMIvU_x095VcCS9r97Hent3DzA', 0, 1, NULL, '2022-12-22 17:33:41', NULL, '2017-03-01 08:00:00', 1);
INSERT INTO `users` VALUES (1532, 'Usuário Diretor', 'usuario.diretor', '$2a$08$4zPQNZvScmwsPYCSouqnr.tTUm6GBqhXBbMbf9cIzbPHwNyCXB2jS', 'contato@enterpriselegacy.local.br', '678,686', 678, NULL, NULL, 'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkZXJsb2JhY2tlbmQiLCJleHAiOjE2NDY4NjA5OTYsImlhdCI6MTY0Njg2MDY5NiwiaXNzIjoiZGVybG9iYWNrZW5kIiwianRpIjoiNGU5OGQ5ZWQtYzE3My00ZDRjLWI0MWQtYWY2MDM4OGI4YzZiIiwibmJmIjoxNjQ2ODYwNjk1LCJzdWIiOiIxNTMyIiwidHlwIjoiYWNjZXNzIn0.SsKcH5ofttI2cNz9OrlU-WQYXUGICCT8QfoEW26FsEryQXYo-bdGmGe729p_tCiAcBOpiG5a4DDs0DBf-DWLiA', NULL, 1, NULL, '2022-03-09 18:18:16', NULL, '2017-05-15 19:04:03', 12);
INSERT INTO `users` VALUES (1548, 'Usuário Gerente', 'usuario.gerente', '$2a$08$4zPQNZvScmwsPYCSouqnr.tTUm6GBqhXBbMbf9cIzbPHwNyCXB2jS', 'contato@enterpriselegacy.local.br', '678', 678, NULL, NULL, NULL, NULL, 1, NULL, '2022-02-23 10:00:21', '2020-08-27 09:50:03,2020-08-27 09:50:13,2020-08-27 09:50:44,2020-09-30 08:38:54,2021-02-01 14:22:17,2021-02-01 14:23:00,2021-02-20 16:11:06,2021-11-01 09:51:14,2021-11-01 09:51:21,2021-12-20 17:09:39,2021-12-20 18:46:57,2021-12-20 18:52:46,2022-01-06 10:20:14,2022-01-06 10:20:29,2022-01-06 10:20:50', '2017-06-22 12:34:07', 4);
INSERT INTO `users` VALUES (1574, 'Usuário Comercial', 'usuario.comercial', '$2a$08$4zPQNZvScmwsPYCSouqnr.tTUm6GBqhXBbMbf9cIzbPHwNyCXB2jS', 'contato@enterpriselegacy.local.br', '678', 678, NULL, NULL, NULL, NULL, 1, NULL, '2021-12-30 21:03:27', '2019-11-27 22:33:17,2020-06-23 18:04:23,2021-08-17 15:03:45', '2017-08-03 15:14:00', 2);
INSERT INTO `users` VALUES (1590, 'Usuário Planejamento', 'usuario.planejamento', '$2a$08$4zPQNZvScmwsPYCSouqnr.tTUm6GBqhXBbMbf9cIzbPHwNyCXB2jS', 'contato@enterpriselegacy.local.br', '678', 678, NULL, NULL, NULL, NULL, 1, NULL, '2022-03-02 10:59:05', NULL, '2017-09-06 17:41:50', 10);
INSERT INTO `users` VALUES (1651, 'Usuário Financeiro', 'usuario.financeiro', '$2a$08$4zPQNZvScmwsPYCSouqnr.tTUm6GBqhXBbMbf9cIzbPHwNyCXB2jS', 'contato@enterpriselegacy.local.br', '678', 678, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2017-10-02 15:57:53', 7);

-- ----------------------------
-- Table structure for users_portaldocliente
-- ----------------------------
DROP TABLE IF EXISTS `users_portaldocliente`;
CREATE TABLE `users_portaldocliente`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `database` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cliente_id` int(11) NULL DEFAULT NULL,
  `empresa_id` int(11) NULL DEFAULT NULL,
  `projeto_id` int(11) NULL DEFAULT NULL,
  `grupo_id` int(11) NULL DEFAULT NULL,
  `shorten_url` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `hash_esqueceu_senha` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date_esqueceu_senha` datetime(0) NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `is_active` int(11) NULL DEFAULT 1,
  `useragent_adesao` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `date_joined` datetime(0) NULL DEFAULT NULL,
  `way` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `username`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `idx_users_pdc`(`id`) USING BTREE,
  INDEX `idx_users_pdc_cliente`(`cliente_id`) USING BTREE,
  INDEX `idx_users_pdc_empresa`(`empresa_id`) USING BTREE,
  INDEX `idx_users_pdc_projeto`(`projeto_id`) USING BTREE,
  INDEX `idx_users_pdc_grupo`(`grupo_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_portaldocliente
-- ----------------------------
INSERT INTO `users_portaldocliente` VALUES (1, 'carla.meres@legacy.com.br', '$2a$08$H7PxA3T0YDVGrpPNsfx2ouoEnWy3gupacJAtVCS0O4m9hRH1xeDXS', 'crmerp_legacy_company_1', 3, 678, 1, 3, NULL, NULL, NULL, '2022-12-30 17:11:52', 1, NULL, '2022-04-11 22:04:35', 1);
INSERT INTO `users_portaldocliente` VALUES (4, 'edinaldo.carvalho@legacy.com.br', '$2a$08$obymqUW6s1jReqduveQMxuLaXDGkqD/f3qzK77Tq10YVxKcmuRw4i', 'crmerp_legacy_company_1', 18, 678, NULL, 3, NULL, NULL, NULL, '2022-07-12 15:39:26', 1, NULL, '2022-04-25 22:05:42', 6);

SET FOREIGN_KEY_CHECKS = 1;
