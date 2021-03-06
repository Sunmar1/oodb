<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
		"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="utf-8"/>
	<link rel='stylesheet' href='${model["app_path"]}/css/lab10.css'>
	<script src='${model["app_path"]}/js/lab10.js'></script>

	<title>Лабораторная работа 10</title>
</head>
<body>

<div class="menu-bar">
	<ul>
		<li><a class="active" href='${model["app_path"]}'>Главная</a></li>
		<li><a href='${model["app_path"]}/area/'>Участки</a></li>
		<li><a href='${model["app_path"]}/clinic/'>Клиники</a></li>

		<li style="float:right"><a href='${model["app_path"]}/logout'>Выход</a></li>
	</ul>
</div>

<div class="c-wrapper">


<H2>
	 Участки
</H2>

	<table>
		<thead>
			<th>id</th><th>Имя</th>
		</thead>
		<tbody>
		<#if model["areas"]??>
		<#list model["areas"] as area>
			<tr>
				<td>
					<#if area.id??>${area.id}</#if>
				</td>
				<td><#if area.name??>${area.name}</#if></td>
			</tr>
		</#list>
		</#if>
	</tbody>
	</table>

	<H3>
		Поиск
	</H3>
	<form action='${model["app_path"]}/areabyname/' method="post">
		Имя: <input name="name" type="text"/>
		<input type="submit" value="Искать"/>

	</form>

</div>
</body>
</html>