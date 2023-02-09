<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자주문 페이지</title>
</head>
<style>
	table , tr {
		border : 1px solid black;
	}
</style>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY년 MM월 dd일 E요일");
		String today = sdf.format(date);
	%>
	
	<h1>
		오늘은 <span style='color:pink;'><%= today %></span>입니다
	</h1>
	
	<h1>피자 아카데미</h1>
	
	<table border="1" style='border-collapse: collapse;'>
		<tr>
			<th>종류</th>
			<th>이름</th>
			<th>가격</th>
			<th rowspan="12" width= 10px;></th>
			<th>종류</th>
			<th>이름</th>
			<th>가격</th>
		</tr>
		<tr>
			<td rowspan="5">피자</td>
			<td>치즈피자</td>
			<td>5000</td>
			<td rowspan="13">사이드</td>
			<td>오븐구이통닭</td>
			<td>5000</td>
		</tr>
		<tr>
			<td>콤비네이션 피자</td>
			<td>6000</td>
			<td>치킨스틱&윙</td>
			<td>4900</td>
		</tr>
		<tr>
			<td>포테이토피자</td>
			<td>7000</td>
			<td>치즈오븐스파게티</td>
			<td>4000</td>
		</tr>
		<tr>
			<td>고구마피자</td>
			<td>7000</td>
			<td>새우링&웨지감자</td>
			<td>3500</td>
		</tr>
		<tr>
			<td>불고기피자</td>
			<td>8000</td>
			<td>갈릭포테이토</td>
			<td>3000</td>
		</tr>
		<tr>
			<td rowspan="6">토핑</td>
			<td>고구마무스</td>
			<td>1000</td>
			<td>콜라</td>
			<td>1500</td>
		</tr>
		<tr>
			<td>콘크림무스</td>
			<td>1500</td>
			<td>사이다</td>
			<td>1500</td>
		</tr>
		<tr>
			<td>파인애플토핑</td>
			<td>2000</td>
			<td>갈릭소스</td>
			<td>500</td>
		</tr>
		<tr>
			<td>치즈토핑</td>
			<td>2000</td>
			<td>피클</td>
			<td>500</td>
		</tr>
		<tr>
			<td>치즈크러스트</td>
			<td>2000</td>
			<td>핫소스</td>
			<td>100</td>
		</tr>
		<tr>
			<td>치즈바이트</td>
			<td>3000</td>
			<td>파마산치즈가루</td>
			<td>100</td>
		</tr>
	</table>
	
	<form action="/jsp/PracticeOrder.do" method='post'>
		피자 : 
		<select name="pizza">
			<option>치즈피자</option>
			<option>콤비네이션피자</option>
			<option>포테이토피자</option>
			<option>고구마피자</option>
			<option>불고기피자</option>
		</select> <br>
		토핑 :
		<input type="checkbox" name="topping" value='고구마무스'>고구마무스
		<input type="checkbox" name="topping" value='콘크림무스'>콘크림무스
		<input type="checkbox" name="topping" value='파인애플토핑'>파인애플토핑
		<input type="checkbox" name="topping" value='치즈토핑'>치즈토핑
		<input type="checkbox" name="topping" value='치즈크러스트'>치즈크러스트
		<input type="checkbox" name="topping" value='치즈바이트'>치즈바이트
		<br>
	
	
	
	
	사이드 :
	<input type="checkbox" name="side" value='오븐구이통닭'>오븐구이통닭
	<input type="checkbox" name="side" value='치킨스틱&윙'>치킨스틱&윙
	<input type="checkbox" name="side" value='치즈오븐스파게티'>치즈오븐스파게티
	<input type="checkbox" name="side" value='새우링&웨지감자'>새우링&웨지감자
	<input type="checkbox" name="side" value='갈릭포테이토'>갈릭포테이토
	<input type="checkbox" name="side" value='콜라'>콜라
	<input type="checkbox" name="side" value='사이다'>사이다
	<br>
	
	<button>확인</button>
	</form>
</body>
</html>