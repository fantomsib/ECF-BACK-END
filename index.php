<?php
define('DIR', __DIR__);
$conf = require 'config.php';
require 'core.php';
$db = new mysqli($conf['dbhost'], $conf['dbuser'], $conf['dbpass'], $conf['dbname']);
$db->query('SET NAMES utf8');

require 'router.php';
