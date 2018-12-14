.class public interface abstract Ljavax/servlet/ServletRequest;
.super Ljava/lang/Object;
.source "ServletRequest.java"


# virtual methods
.method public abstract getAsyncContext()Ljavax/servlet/AsyncContext;
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCharacterEncoding()Ljava/lang/String;
.end method

.method public abstract getContentLength()I
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDispatcherType()Ljavax/servlet/DispatcherType;
.end method

.method public abstract getInputStream()Ljavax/servlet/ServletInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLocalAddr()Ljava/lang/String;
.end method

.method public abstract getLocalName()Ljava/lang/String;
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getLocales()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParameterMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameterNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getReader()Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRealPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRemoteAddr()Ljava/lang/String;
.end method

.method public abstract getRemoteHost()Ljava/lang/String;
.end method

.method public abstract getRemotePort()I
.end method

.method public abstract getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getServerName()Ljava/lang/String;
.end method

.method public abstract getServerPort()I
.end method

.method public abstract getServletContext()Ljavax/servlet/ServletContext;
.end method

.method public abstract isAsyncStarted()Z
.end method

.method public abstract isAsyncSupported()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setCharacterEncoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract startAsync()Ljavax/servlet/AsyncContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract startAsync(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljavax/servlet/AsyncContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
