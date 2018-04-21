<%--
  Created by IntelliJ IDEA.
  User: Javiery
  Date: 18/4/2018
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.security.MessageDigest"%>
<%
    String username = request.getParameter("loginid");
    String plaintext = request.getParameter("password");
    MessageDigest alg = MessageDigest.getInstance("SHA-256");

// Reset the digest, in case it's been used already during this section of code
// This probably isn't needed for pages of 210 simplicity
    alg.reset();

// Calculate the md5 hash for the password. md5 operates on bytes, so give
// MessageDigest the byte verison of the string
    alg.update(plaintext.getBytes());

// Create a byte array from the string digest
    byte[] digest = alg.digest();
    StringBuffer hashedpasswd = new StringBuffer();
    String hx;
    for (int i=0;i<digest.length;i++){
        hx =  Integer.toHexString(0xFF & digest[i]);
        //0x03 is equal to 0x3, but we need 0x03 for our md5sum
        if(hx.length() == 1){hx = "0" + hx;}
        hashedpasswd.append(hx);
    }

    String hash = hashedpasswd.toString();

    out.println(hash);

    if(username.equalsIgnoreCase("Lincoln") && hash.equals("6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090")){
        response.sendRedirect("welcome.jsp");
    }
    else{
        response.sendRedirect("login.jsp?login=fail");


    }
%>
