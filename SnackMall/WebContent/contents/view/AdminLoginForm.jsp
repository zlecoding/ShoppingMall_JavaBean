<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>관리자 로그인</title> 
    <style>
        #wrap{
            width:270px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
            border:3px solid #d49466
        }
        
        td{
            border:1px solid #d49466
        }
        
        #title{
            background-color:#d49466
        }
    </style>
        
    <script>
        function checkValue() {
            if(!document.loginInfo.userID.value) {
                alert("아이디를 입력하세요");
                document.loginInfo.userID.focus();
                return false;
            }
            if(!document.loginInfo.userPassword.value) {
            	alert("비밀번호를 입력하세요");
            	return false;
                //document.loginInfo.userPassowrd.focus(); 이 뒤에 return false 실행시 submit false가 안됨
            }
        }         
     
		function goMain() {
			location.href="../../UserMain.jsp";
		}
		
		function goUserLoginForm() {
			location.href="UserLoginForm.jsp";
		}
		
    </script>
</head>
<body>
	<script src="https://kit.fontawesome.com/8351000410.js" crossorigin="anonymous"></script>
    <div id="wrap">
    	<b><font size="6" color="gray"> <i class="fas fa-sign-in-alt"></i>관리자 로그인</font></b>
        <br><br><br>
        <!-- 이미지 추가 -->
		<img src="../../img/welcome.jpg">
		<br><br>
        <form name="loginInfo" method="post" onsubmit="return checkValue()" action="../pro/AdminLoginPro.jsp">
       		<table>
               <tr>
	               <td>아이디</td>
	               <td><input type="text" name="userID" maxlength="100"></td>
               </tr>      
               <tr>
	               <td>비밀번호</td>
	               <td><input type="password" name="userPassword" maxlength="100"></td>
               </tr>
               <!-- <tr>
					<td colspan="2">
					<input type="radio" id="user" name="userType" value="user" checked>사용자
					<input type="radio" id="adimin" name="userType" value="admin">관리자</td>
				</tr> -->
            </table>
            <br>
            <input type="submit" value="로그인 ">  
        </form>
        <input type="button" value="회원로그인페이지" onClick="goUserLoginForm()">
        <br><br>
        <input type="button" value="아이디/비밀번호 찾기 " onClick="">
        <input type="button" value="메인" onclick="goMain()"> 
    </div>    
</body>
</html>
