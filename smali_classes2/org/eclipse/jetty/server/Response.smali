.class public Lorg/eclipse/jetty/server/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Response$NullOutput;
    }
.end annotation


# static fields
.field public static final HTTP_ONLY_COMMENT:Ljava/lang/String; = "__HTTP_ONLY__"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NONE:I = 0x0

.field public static final SET_INCLUDE_HEADER_PREFIX:Ljava/lang/String; = "org.eclipse.jetty.server.include."

.field public static final STREAM:I = 0x1

.field public static final WRITER:I = 0x2


# instance fields
.field private _cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private _characterEncoding:Ljava/lang/String;

.field private final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private _contentType:Ljava/lang/String;

.field private _explicitEncoding:Z

.field private _locale:Ljava/util/Locale;

.field private _mimeType:Ljava/lang/String;

.field private volatile _outputState:I

.field private _reason:Ljava/lang/String;

.field private _status:I

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lorg/eclipse/jetty/server/Response;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Response;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 94
    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 111
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    return-void
.end method

.method public static getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;
    .locals 1

    .line 87
    instance-of v0, p0, Lorg/eclipse/jetty/server/Response;

    if-eqz v0, :cond_0

    .line 88
    check-cast p0, Lorg/eclipse/jetty/server/Response;

    return-object p0

    .line 90
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 14

    .line 148
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "__HTTP_ONLY__"

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    const-string v3, "__HTTP_ONLY__"

    const-string v4, ""

    .line 157
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v10, v0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object v10, v0

    const/4 v0, 0x0

    .line 162
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getMaxAge()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getSecure()Z

    move-result v11

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->isHttpOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v12, 0x1

    :goto_2
    invoke-virtual {p1}, Ljavax/servlet/http/Cookie;->getVersion()I

    move-result v13

    invoke-virtual/range {v3 .. v13}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V

    return-void
.end method

.method public addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->addDateField(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 585
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "org.eclipse.jetty.server.include."

    .line 587
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.eclipse.jetty.server.include."

    .line 588
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "Content-Type"

    .line 593
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    return-void

    .line 599
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Length"

    .line 600
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 601
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object p1, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    :cond_3
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 3

    .line 624
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->addLongField(Ljava/lang/String;J)V

    const-string p2, "Content-Length"

    .line 627
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 628
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object p1, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {p1, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    :cond_0
    return-void
.end method

.method public complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->completeResponse()V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p1

    .line 194
    :cond_0
    invoke-interface {v1}, Lorg/eclipse/jetty/server/SessionManager;->isCheckingRemoteSessionIdEncoding()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    new-instance v2, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v2, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    .line 199
    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v5

    if-gez v5, :cond_3

    const-string v5, "https"

    .line 201
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x1bb

    goto :goto_0

    :cond_2
    const/16 v5, 0x50

    .line 202
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v6

    if-ne v6, v5, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    return-object p1

    :cond_5
    move-object v2, v3

    .line 208
    :cond_6
    invoke-interface {v1}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdPathParameterNamePrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    return-object p1

    :cond_7
    if-nez p1, :cond_8

    return-object v3

    .line 216
    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isRequestedSessionIdFromCookie()Z

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_c

    .line 218
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_b

    const-string v1, "?"

    .line 221
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_9

    const-string v1, "#"

    .line 223
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :cond_9
    if-gt v1, v0, :cond_a

    .line 226
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 227
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    return-object p1

    .line 233
    :cond_c
    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    if-nez v0, :cond_d

    return-object p1

    .line 240
    :cond_d
    invoke-interface {v1, v0}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v3

    if-nez v3, :cond_e

    return-object p1

    .line 243
    :cond_e
    invoke-interface {v1, v0}, Lorg/eclipse/jetty/server/SessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_f

    .line 246
    new-instance v2, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v2, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 250
    :cond_f
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_12

    const-string v2, "?"

    .line 253
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_10

    const-string v2, "#"

    .line 255
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    :cond_10
    if-gt v2, v1, :cond_11

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 259
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const/16 v1, 0x3f

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_13

    const/16 v1, 0x23

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_13
    if-gez v1, :cond_16

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "https"

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "http"

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_14
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_15

    const-string p1, "/"

    goto :goto_1

    :cond_15
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 275
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "https"

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "http"

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpURI;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v2, "/"

    goto :goto_2

    :cond_18
    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->flushResponse()V

    return-void
.end method

.method public fwdReset()V
    .locals 1

    .line 1139
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    const/4 v0, 0x0

    .line 1141
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 1142
    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .line 1055
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->getContentBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ISO-8859-1"

    .line 663
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 664
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()J
    .locals 2

    .line 1259
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->getContentWritten()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNamesCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 572
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValuesCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    .line 574
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    return-object p1
.end method

.method public getHttpFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .line 1267
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1219
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 1221
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eq v0, v1, :cond_0

    .line 689
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WRITER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    .line 692
    iput v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 1241
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    return-object v0
.end method

.method getSetCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 670
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1231
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    return v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eq v0, v1, :cond_0

    .line 715
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STREAM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    if-nez v0, :cond_4

    .line 721
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 726
    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v2, :cond_1

    .line 727
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-static {v0}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "ISO-8859-1"

    .line 732
    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Response;->setCharacterEncoding(Ljava/lang/String;)V

    .line 736
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 738
    :cond_4
    iput v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 739
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .line 1162
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isResponseCommitted()Z

    move-result v0

    return v0
.end method

.method public isOutputing()Z
    .locals 1

    .line 705
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWriting()Z
    .locals 2

    .line 699
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected recycle()V
    .locals 2

    const/16 v0, 0xc8

    .line 121
    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    .line 124
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 126
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    .line 128
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    .line 130
    iput v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    return-void
.end method

.method public reset()V
    .locals 6

    .line 1073
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    .line 1074
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->fwdReset()V

    const/16 v0, 0xc8

    .line 1075
    iput v0, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    const/4 v0, 0x0

    .line 1076
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 1081
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, ","

    .line 1084
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1085
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 1087
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1091
    invoke-virtual {v4}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1102
    :cond_0
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    const-string v5, "TE"

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v4, "HTTP/1.0"

    .line 1098
    iget-object v5, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1099
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    const-string v5, "keep-alive"

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1094
    :cond_2
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public reset(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 1114
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->reset()V

    goto :goto_2

    .line 1117
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    .line 1119
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "Set-Cookie"

    .line 1120
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 1121
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1122
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 1126
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Set-Cookie"

    .line 1127
    invoke-virtual {p1, v2, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public resetBuffer()V
    .locals 2

    .line 1151
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->resetBuffer()V

    return-void
.end method

.method public sendError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->sendProcessing()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 313
    sget-object v0, Lorg/eclipse/jetty/server/Response;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Committed before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v2, "Expires"

    .line 317
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Last-Modified"

    .line 318
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cache-Control"

    .line 319
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    .line 320
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    .line 321
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iput v1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    .line 324
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    if-nez p2, :cond_2

    .line 327
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/16 v2, 0xcc

    const/16 v3, 0xce

    if-eq p1, v2, :cond_a

    const/16 v2, 0x130

    if-eq p1, v2, :cond_a

    if-eq p1, v3, :cond_a

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_a

    .line 335
    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v2

    .line 338
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 340
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-nez v3, :cond_4

    .line 342
    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v3

    const-class v4, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/Server;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/handler/ErrorHandler;

    :cond_4
    if-eqz v3, :cond_5

    const-string v1, "javax.servlet.error.status_code"

    .line 345
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "javax.servlet.error.message"

    .line 346
    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "javax.servlet.error.request_uri"

    .line 347
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "javax.servlet.error.servlet_name"

    .line 348
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getServletName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p2

    invoke-virtual {v3, v0, p1, p2, p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "Cache-Control"

    const-string v3, "must-revalidate,no-cache,no-store"

    .line 353
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/html;charset=ISO-8859-1"

    .line 354
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    .line 355
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    if-eqz p2, :cond_6

    const-string v3, "&"

    const-string v4, "&amp;"

    .line 358
    invoke-static {p2, v3, v4}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "<"

    const-string v4, "&lt;"

    .line 359
    invoke-static {p2, v3, v4}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ">"

    const-string v4, "&gt;"

    .line 360
    invoke-static {p2, v3, v4}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 362
    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "&"

    const-string v4, "&amp;"

    .line 365
    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    const-string v4, "&lt;"

    .line 366
    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, "&gt;"

    .line 367
    invoke-static {v2, v3, v4}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string v3, "<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html;charset=ISO-8859-1\"/>\n"

    .line 370
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v3, "<title>Error "

    .line 371
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x20

    .line 373
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(C)V

    if-nez p2, :cond_8

    .line 375
    invoke-static {p1}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object p2

    .line 376
    :cond_8
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string v3, "</title>\n</head>\n<body>\n<h2>HTTP ERROR: "

    .line 377
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string p1, "</h2>\n<p>Problem accessing "

    .line 379
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string p1, ". Reason:\n<pre>    "

    .line 381
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string p1, "</pre>"

    .line 383
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    const-string p1, "</p>\n<hr /><i><small>Powered by Jetty://</small></i>"

    .line 384
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x14

    if-ge v1, p1, :cond_9

    const-string p1, "\n                                                "

    .line 387
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    const-string p1, "\n</body>\n</html>\n"

    .line 388
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 391
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 392
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 393
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->destroy()V

    goto :goto_2

    :cond_a
    if-eq p1, v3, :cond_b

    .line 398
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 399
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 400
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 401
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 405
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->complete()V

    return-void
.end method

.method public sendProcessing()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isExpecting102Processing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->send1xx(I)V

    :cond_0
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 444
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 446
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 448
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    .line 449
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 453
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    :goto_0
    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 457
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "path cannot be above root"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v1, "/"

    .line 458
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x2f

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 464
    new-instance v0, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-static {v1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 468
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 469
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 471
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getRootURL()Ljava/lang/StringBuilder;

    move-result-object p1

    .line 472
    invoke-static {v2}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getParam()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const/16 v2, 0x3b

    .line 476
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const/16 v2, 0x3f

    .line 482
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0x23

    .line 488
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 495
    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->resetBuffer()V

    const-string v0, "Location"

    .line 496
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/server/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12e

    .line 497
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 498
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->complete()V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 5

    .line 1044
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/http/Generator;->increaseContentBufferSize(I)V

    return-void

    .line 1045
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Committed or content written"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 4

    .line 748
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 751
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 753
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 758
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 760
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 761
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz p1, :cond_1

    .line 762
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_0

    .line 763
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 764
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_0

    .line 766
    :cond_2
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 768
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 769
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_2

    .line 771
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 777
    :cond_4
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 778
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 780
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_6

    .line 783
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 784
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz p1, :cond_5

    .line 786
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 789
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 790
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 794
    :cond_5
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    if-nez p1, :cond_9

    .line 796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";charset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 797
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 802
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const-string v1, "charset="

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_7

    .line 805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";charset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    :cond_7
    add-int/lit8 p1, p1, 0x8

    .line 810
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    .line 814
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 816
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public setContentLength(I)V
    .locals 3

    .line 832
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 834
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    if-lez p1, :cond_2

    .line 837
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 838
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object p1, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {p1}, Lorg/eclipse/jetty/http/Generator;->isAllContentWritten()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 840
    iget p1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 841
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 842
    :cond_1
    iget p1, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 846
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 850
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 9

    .line 878
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 887
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    if-nez p1, :cond_1

    .line 888
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 889
    :cond_1
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 890
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 891
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 892
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x3b

    .line 897
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_12

    const/4 v2, 0x0

    .line 904
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 905
    sget-object v3, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v4, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v3, "charset="

    add-int/lit8 v4, v1, 0x1

    .line 908
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_10

    const/4 v0, 0x1

    .line 911
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    add-int/lit8 v0, v3, 0x8

    const/16 v5, 0x20

    .line 913
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 915
    iget v7, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    if-ne v3, v4, :cond_3

    if-ltz v6, :cond_4

    :cond_3
    add-int/2addr v1, v8

    if-ne v3, v1, :cond_7

    if-gez v6, :cond_7

    .line 918
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_7

    .line 920
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz p1, :cond_6

    .line 922
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 925
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 926
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_1

    .line 930
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";charset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 931
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 936
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";charset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 937
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    if-gez v6, :cond_8

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";charset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 943
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 947
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";charset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 948
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    if-ne v3, v4, :cond_a

    if-ltz v6, :cond_b

    :cond_a
    add-int/2addr v1, v8

    if-ne v3, v1, :cond_e

    if-gez v6, :cond_e

    .line 951
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_e

    .line 954
    :cond_b
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 955
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 957
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_d

    .line 959
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 962
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 963
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_1

    .line 967
    :cond_c
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 968
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 973
    :cond_d
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 974
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    if-lez v6, :cond_f

    .line 979
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 980
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 981
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 985
    :cond_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 986
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 987
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 992
    :cond_10
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 993
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";charset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 994
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 999
    :cond_12
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1000
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 1002
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1004
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_14

    .line 1006
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1009
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_1

    .line 1014
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";charset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1015
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1020
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";charset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const-string v1, ";= "

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1021
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_1

    .line 1024
    :cond_15
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_16

    .line 1026
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1027
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    .line 1031
    :cond_16
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1032
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_17
    :goto_2
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-Type"

    .line 528
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/Response;->setContentType(Ljava/lang/String;)V

    goto :goto_1

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "org.eclipse.jetty.server.include."

    .line 534
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "org.eclipse.jetty.server.include."

    .line 535
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void

    .line 539
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Length"

    .line 540
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    .line 543
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object p1, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    goto :goto_1

    .line 545
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object p1, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 3

    .line 610
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    const-string p2, "Content-Length"

    .line 613
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 614
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object p1, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {p1, v1, v2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 5

    if-eqz p1, :cond_6

    .line 1172
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1175
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_locale:Ljava/util/Locale;

    .line 1176
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LANGUAGE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 1178
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Response;->_explicitEncoding:Z

    if-nez v0, :cond_5

    iget v0, p0, Lorg/eclipse/jetty/server/Response;->_outputState:I

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1181
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1184
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1188
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    .line 1191
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1194
    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_characterEncoding:Ljava/lang/String;

    const/16 v1, 0x3b

    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 1198
    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";charset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1203
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    .line 1207
    :goto_0
    sget-object p1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/server/Response;->_cachedMimeType:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 1208
    iget-object p1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public setLongContentLength(J)V
    .locals 2

    .line 866
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/http/Generator;->setContentLength(J)V

    .line 869
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setStatus(I)V
    .locals 1

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    if-gtz p1, :cond_0

    .line 648
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    iput p1, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    .line 652
    iput-object p2, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/server/Response;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_reason:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Response;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponseFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
