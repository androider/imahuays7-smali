.class public Lorg/eclipse/jetty/server/HttpOutput;
.super Ljavax/servlet/ServletOutputStream;
.source "HttpOutput.java"


# instance fields
.field _bytes:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

.field _characterEncoding:Ljava/lang/String;

.field _chars:[C

.field private _closed:Z

.field protected final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field _converter:Ljava/io/Writer;

.field protected final _generator:Lorg/eclipse/jetty/http/AbstractGenerator;

.field private _onebyte:Lorg/eclipse/jetty/io/ByteArrayBuffer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 59
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/http/AbstractGenerator;

    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    return-void
.end method

.method private write(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw p1

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->blockForOutput(J)V

    .line 148
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    if-eqz v0, :cond_2

    .line 149
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw p1

    .line 155
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isAllContentWritten()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    .line 162
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    goto :goto_0

    .line 164
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 168
    :cond_5
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->blockForOutput(J)V

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/HttpOutput;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->flush(J)V

    return-void
.end method

.method public getMaxIdleTime()I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    return v0
.end method

.method public isWritten()Z
    .locals 5

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->getContentWritten()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public print(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/HttpOutput;->write([B)V

    return-void
.end method

.method public reopen()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_closed:Z

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_onebyte:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_onebyte:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_onebyte:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 132
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_onebyte:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(B)V

    .line 133
    iget-object p1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_onebyte:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/HttpOutput;->write(Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/HttpOutput;->write(Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/HttpOutput;->write(Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method
