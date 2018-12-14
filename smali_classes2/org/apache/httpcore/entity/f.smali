.class public Lorg/apache/httpcore/entity/f;
.super Lorg/apache/httpcore/entity/a;
.source "StringEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/httpcore/entity/ContentType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/apache/httpcore/entity/a;-><init>()V

    const-string v0, "Source string"

    .line 65
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Lorg/apache/httpcore/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lorg/apache/httpcore/d/c;->a:Ljava/nio/charset/Charset;

    .line 70
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/httpcore/entity/f;->d:[B

    if-eqz p2, :cond_2

    .line 72
    invoke-virtual {p2}, Lorg/apache/httpcore/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/httpcore/entity/f;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    .line 166
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lorg/apache/httpcore/entity/f;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 168
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public b()J
    .locals 2

    .line 156
    iget-object v0, p0, Lorg/apache/httpcore/entity/f;->d:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 183
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/httpcore/entity/f;->d:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
