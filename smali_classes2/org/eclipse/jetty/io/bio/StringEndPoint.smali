.class public Lorg/eclipse/jetty/io/bio/StringEndPoint;
.super Lorg/eclipse/jetty/io/bio/StreamEndPoint;
.source "StringEndPoint.java"


# instance fields
.field _bin:Ljava/io/ByteArrayInputStream;

.field _bout:Ljava/io/ByteArrayOutputStream;

.field _encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v0, "UTF-8"

    .line 34
    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    .line 41
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_in:Ljava/io/InputStream;

    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_out:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/io/bio/StringEndPoint;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 3

    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 75
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;

    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lorg/eclipse/jetty/io/bio/StringEndPoint$1;-><init>(Lorg/eclipse/jetty/io/bio/StringEndPoint;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public hasMore()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 1

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 57
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    .line 58
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bin:Ljava/io/ByteArrayInputStream;

    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_in:Ljava/io/InputStream;

    .line 59
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    .line 60
    iget-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_bout:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_ishut:Z

    .line 62
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/bio/StringEndPoint;->_oshut:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
