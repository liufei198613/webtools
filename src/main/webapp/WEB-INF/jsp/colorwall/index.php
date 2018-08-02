

<?php
header('Cache-control', 'max-age=36000');
header('Expires', gmdate('D, d M Y H:i:s', $_SERVER['REQUEST_TIME'] + 36000) . ' GMT');
header('Last-Modified: '. gmdate('D, d M Y H:i:s', $_SERVER['REQUEST_TIME'] + 36000) . ' GMT');

define('TYPE_DEFAULT', 0);
define('TYPE_NORMAL', 1);
define('TYPE_SIMPLE', 2);
define('TYPE_HEAVY', 3);

define('COL_NUM', 10);
define('ROW_NUM', 10);

$type = isset($_GET['type']) ? intval($_GET['type']) : TYPE_DEFAULT;
if ($type == TYPE_DEFAULT) {
	$types = array(TYPE_NORMAL, TYPE_SIMPLE, TYPE_HEAVY);
	shuffle($types);
	$type = array_shift($types);
}

$colors = array();

if ($type == TYPE_SIMPLE || $type == TYPE_HEAVY) {
	$colors = array();
	// we want to create a random color chart of Light colors consisting
	// of C,D,E,F in Hex..
	$highletters = array("A","B","C","D","E","F");
	if($type == TYPE_HEAVY){
	  $highletters = array("0","1","2","4","6","8");	
	}

	for($i=1; $i< ROW_NUM; $i++){
		$colors[$i]  = array();
		for($j=1;$j<COL_NUM;$j++){
			$colors[$i][] = genRandColor($highletters);
		}
	}
} else {
	$baseColors = include dirname(__FILE__) . '/colors.php';
	$allColors = $baseColors;
	$needMoreCount = (ROW_NUM * COL_NUM) - count($baseColors);
	while ($needMoreCount > 0) {
		$allColors[] = $baseColors[$needMoreCount];
		$needMoreCount --;
	}
	shuffle($allColors);
	$allColors = array_slice($allColors, 0, ROW_NUM * COL_NUM);
	
	foreach ($allColors as $key => $val) {
		$colors[intval($key / ROW_NUM)][$key % COL_NUM] = $val;
	}
}

function genRandColor($highletters)
{
    $randomhex = "";
    for ($index = 1; $index <= 6; $index++) {
        $randomindex = rand(0,5); 
        $randomhex .= $highletters[$randomindex];
    }
    return '#' . $randomhex;

}

?> 



<?php
require WEB_TOOLS_ROOT . '/header.html';
?>

<div class="projects-header page-header">
	<h2 id="theColorYouLike">请选择</h2>
		<p>以下颜色为在线随机生成，点击心爱的颜色，即可获取相应的颜色值。</p>
</div>

<div class="row">

<!-- <table style="width:960px;height:600px;"> -->
<table class="table" style="height:500px;">
<?php
foreach ($colors as $colorArr) {
    echo "<tr>\n";
    foreach ($colorArr as $color) {
		$rgb = sprintf('RGB(%d,%d,%d)', hexdec(substr($color, 1, 2)), hexdec(substr($color, 3, 2)), hexdec(substr($color, 5, 2)));
        echo <<<EOT
    <td width="20px;" bgcolor="{$color}" style="cursor: pointer" onclick="javascript:copyColor('$color', '$rgb');" ></td>\n
EOT;
    }
    echo "</tr>\n";
}
?>
</table>

<br />
切换至：
<a href="<?php echo '/colorwall/?type=', TYPE_NORMAL; ?>">精选版</a>&nbsp;&nbsp;
<a href="<?php echo '/colorwall/?type=', TYPE_SIMPLE; ?>">简约版</a>&nbsp;&nbsp;
<a href="<?php echo '/colorwall/?type=', TYPE_HEAVY; ?>">深沉版</a>

<br /><br />

更多选择：
<a href="http://tool.oschina.net/commons?type=3">RGB颜色对照表</a>&nbsp;&nbsp;
<a href="http://www.w3school.com.cn/html/html_colornames.asp">HTML 颜色名</a>&nbsp;&nbsp;


</div> <!-- row -->

<?php
require WEB_TOOLS_ROOT . '/footer.html';
?>

<?php
 /** ---------------------------------- JS Functions -------------------------------**/
?>
<script type="text/javascript">
function copyColor(color, rgb)
{
    document.getElementById("theColorYouLike").innerHTML = rgb + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + color;
}

</script>

