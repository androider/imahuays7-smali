.class public Lorg/eclipse/jetty/server/handler/ErrorHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "ErrorHandler.java"


# instance fields
.field _cacheControl:Ljava/lang/String;

.field _showMessageInTitle:Z

.field _showStacks:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    .line 47
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    const-string v0, "must-revalidate,no-cache,no-store"

    .line 48
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMessageInTitle()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 58
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GET"

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "text/html;charset=ISO-8859-1"

    .line 61
    invoke-interface {p4, p2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "Cache-Control"

    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    invoke-interface {p4, p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    new-instance p2, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v0, 0x1000

    invoke-direct {p2, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 65
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p2, v0, p1}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 67
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result p1

    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 68
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 69
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->destroy()V

    return-void
.end method

.method protected handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-boolean v5, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    return-void
.end method

.method public isShowStacks()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    return v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-void
.end method

.method public setShowMessageInTitle(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    return-void
.end method

.method public setShowStacks(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    return-void
.end method

.method protected write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 217
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    .line 232
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, 0x3f

    .line 233
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_2
    const-string v1, "&gt;"

    .line 228
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "&lt;"

    .line 225
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "&amp;"

    .line 222
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    .line 84
    invoke-static {p3}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object p4

    :cond_0
    move-object v4, p4

    const-string p4, "<html>\n<head>\n"

    .line 86
    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    const-string p4, "</head>\n<body>"

    .line 88
    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 89
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    const-string p1, "\n</body>\n</html>\n"

    .line 90
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 115
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    :cond_0
    const-string p1, "<hr /><i><small>Powered by Jetty://</small></i>"

    .line 118
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    const/16 p3, 0x14

    if-ge p1, p3, :cond_1

    const-string p3, "<br/>                                                \n"

    .line 120
    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    .line 97
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "<title>Error "

    .line 98
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    .line 103
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    .line 104
    invoke-virtual {p0, p2, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_0
    const-string p1, "</title>\n"

    .line 106
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "<h2>HTTP ERROR "

    .line 127
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 128
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "</h2>\n<p>Problem accessing "

    .line 129
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2, p5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, ". Reason:\n<pre>    "

    .line 131
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p2, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "</pre></p>"

    .line 133
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "javax.servlet.error.exception"

    .line 140
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz p1, :cond_0

    const-string v0, "<h3>Caused by:</h3><pre>"

    .line 143
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 145
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 146
    invoke-static {p1, v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 148
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v0, "</pre>\n"

    .line 149
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method
