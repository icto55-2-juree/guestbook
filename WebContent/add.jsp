<%@ page import="com.sds.icto.guestbook.dao.*" %>
<%@ page import="com.sds.icto.guestbook.vo.*" %>
<%
// 한글처리
request.setCharacterEncoding( "utf-8" );

// 메세지 등록
String name = request.getParameter( "name" );
String password = request.getParameter( "pass" );
String message = request.getParameter( "content" );

GuestbookVo vo = new GuestbookVo();
vo.setName( name );
vo.setPassword(password);
vo.setMessage(message);

GuestbookDao dao = new GuestbookDao();
dao.insert(vo);

//리다이렉트
response.sendRedirect( "/guestbook" );
%>