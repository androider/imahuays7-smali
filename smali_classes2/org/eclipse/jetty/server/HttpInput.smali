.class public Lorg/eclipse/jetty/server/HttpInput;
.super Ljavax/servlet/ServletInputStream;
.source "HttpInput.java"


# instance fields
.field protected final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field protected final _parser:Lorg/eclipse/jetty/http/HttpParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljavax/servlet/ServletInputStream;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 38
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/http/HttpParser;

    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 48
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jetty/server/HttpInput;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 50
    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpParser;->blockForContent(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/Buffer;->get([BII)I

    move-result p1

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isEarlyEOF()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    const-string p2, "early EOF"

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
