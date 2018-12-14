.class public Lorg/eclipse/jetty/server/handler/DefaultHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "DefaultHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _favicon:[B

.field final _faviconModified:J

.field _serveIcon:Z

.field _showContexts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/eclipse/jetty/server/handler/DefaultHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 64
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    .line 61
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org/eclipse/jetty/favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    sget-object v1, Lorg/eclipse/jetty/server/handler/DefaultHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getServeIcon()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    return v0
.end method

.method public getShowContexts()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 86
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 p1, 0x1

    .line 89
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 91
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    .line 94
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    if-eqz v0, :cond_2

    const-string v0, "GET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "If-Modified-Since"

    .line 96
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide p1

    iget-wide v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    const/16 p1, 0x130

    .line 97
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xc8

    .line 100
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string p1, "image/x-icon"

    .line 101
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    array-length p1, p1

    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    const-string p1, "Last-Modified"

    .line 103
    iget-wide p2, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    invoke-interface {p4, p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    const-string p1, "Cache-Control"

    const-string p2, "max-age=360000,public"

    .line 104
    invoke-interface {p4, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    invoke-virtual {p1, p2}, Ljavax/servlet/ServletOutputStream;->write([B)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "GET"

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x194

    if-eqz p2, :cond_e

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_5

    .line 117
    :cond_3
    invoke-interface {p4, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string p2, "text/html"

    .line 118
    invoke-interface {p4, p2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 120
    new-instance p2, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v0, 0x5dc

    invoke-direct {p2, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    const-string v0, "<HTML>\n<HEAD>\n<TITLE>Error 404 - Not Found"

    .line 122
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v0, "</TITLE>\n<BODY>\n<H2>Error 404 - Not Found.</H2>\n"

    .line 123
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v0, "No context on this server matched or handled this request.<BR>"

    .line 124
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const-string v0, "Contexts known to this server are: <ul>"

    .line 128
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/DefaultHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 131
    :cond_4
    const-class v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v0, :cond_c

    .line 133
    array-length v3, v0

    if-ge v2, v3, :cond_c

    .line 135
    aget-object v3, v0, v2

    check-cast v3, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 136
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "<li><a href=\""

    .line 138
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_5

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 141
    :cond_5
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, p1, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "/"

    .line 143
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_6
    const-string v4, "\">"

    .line 144
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_7

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&nbsp;@&nbsp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_7
    const-string v4, "&nbsp;--->&nbsp;"

    .line 148
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v3, "</a></li>\n"

    .line 150
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v4, "<li>"

    .line 154
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_9

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&nbsp;@&nbsp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_9
    const-string v4, "&nbsp;--->&nbsp;"

    .line 158
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isFailed()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, " [failed]"

    .line 161
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 162
    :cond_a
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, " [stopped]"

    .line 163
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :cond_b
    const-string v3, "</li>\n"

    .line 164
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_c
    :goto_4
    const/16 p1, 0xa

    if-ge v1, p1, :cond_d

    const-string p1, "\n<!-- Padding for IE                  -->"

    .line 170
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    const-string p1, "\n</BODY>\n</HTML>\n"

    .line 172
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 174
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result p1

    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 175
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    .line 176
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 177
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    .line 113
    :cond_e
    :goto_5
    invoke-interface {p4, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    :cond_f
    :goto_6
    return-void
.end method

.method public setServeIcon(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    return-void
.end method

.method public setShowContexts(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    return-void
.end method
