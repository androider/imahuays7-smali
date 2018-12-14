.class Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;
.super Ljava/io/InputStream;
.source "MultiPartInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/MultiPartInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Base64InputStream"
.end annotation


# instance fields
.field _buffer:[B

.field _in:Lorg/eclipse/jetty/util/ReadLineInputStream;

.field _line:Ljava/lang/String;

.field _pos:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/ReadLineInputStream;)V
    .locals 0

    .line 808
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 809
    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_in:Lorg/eclipse/jetty/util/ReadLineInputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_pos:I

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 821
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_in:Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 824
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    goto :goto_0

    .line 826
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\r\n"

    .line 827
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    goto :goto_0

    .line 830
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 831
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const/16 v1, 0xd

    .line 832
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xa

    .line 833
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 834
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    :goto_0
    const/4 v0, 0x0

    .line 837
    iput v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_pos:I

    .line 840
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    iget v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_pos:I

    aget-byte v0, v0, v1

    return v0
.end method
