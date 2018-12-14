.class public interface abstract Ljavax/servlet/http/HttpServletRequest;
.super Ljava/lang/Object;
.source "HttpServletRequest.java"

# interfaces
.implements Ljavax/servlet/ServletRequest;


# static fields
.field public static final BASIC_AUTH:Ljava/lang/String; = "BASIC"

.field public static final CLIENT_CERT_AUTH:Ljava/lang/String; = "CLIENT_CERT"

.field public static final DIGEST_AUTH:Ljava/lang/String; = "DIGEST"

.field public static final FORM_AUTH:Ljava/lang/String; = "FORM"


# virtual methods
.method public abstract authenticate(Ljavax/servlet/http/HttpServletResponse;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract getAuthType()Ljava/lang/String;
.end method

.method public abstract getContextPath()Ljava/lang/String;
.end method

.method public abstract getCookies()[Ljavax/servlet/http/Cookie;
.end method

.method public abstract getDateHeader(Ljava/lang/String;)J
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeaderNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntHeader(Ljava/lang/String;)I
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract getParts()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract getPathInfo()Ljava/lang/String;
.end method

.method public abstract getPathTranslated()Ljava/lang/String;
.end method

.method public abstract getQueryString()Ljava/lang/String;
.end method

.method public abstract getRemoteUser()Ljava/lang/String;
.end method

.method public abstract getRequestURI()Ljava/lang/String;
.end method

.method public abstract getRequestURL()Ljava/lang/StringBuffer;
.end method

.method public abstract getRequestedSessionId()Ljava/lang/String;
.end method

.method public abstract getServletPath()Ljava/lang/String;
.end method

.method public abstract getSession()Ljavax/servlet/http/HttpSession;
.end method

.method public abstract getSession(Z)Ljavax/servlet/http/HttpSession;
.end method

.method public abstract getUserPrincipal()Ljava/security/Principal;
.end method

.method public abstract isRequestedSessionIdFromCookie()Z
.end method

.method public abstract isRequestedSessionIdFromURL()Z
.end method

.method public abstract isRequestedSessionIdFromUrl()Z
.end method

.method public abstract isRequestedSessionIdValid()Z
.end method

.method public abstract isUserInRole(Ljava/lang/String;)Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract logout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method
