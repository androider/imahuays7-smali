.class public Lorg/seamless/util/io/Base64Coder$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64Coder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/util/io/Base64Coder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 1876
    invoke-direct {p0, p1, v0}, Lorg/seamless/util/io/Base64Coder$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .line 1900
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1901
    :goto_0
    iput-boolean p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->breakLines:Z

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1902
    :goto_1
    iput-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->encode:Z

    .line 1903
    iget-boolean p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->encode:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    :goto_2
    iput p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->bufferLength:I

    .line 1904
    iget p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->bufferLength:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    .line 1905
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    .line 1906
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    .line 1907
    iput-boolean v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    .line 1908
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    .line 1909
    iput p2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->options:I

    .line 1910
    invoke-static {p2}, Lorg/seamless/util/io/Base64Coder;->access$000(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->decodabet:[B

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

    .line 2025
    invoke-virtual {p0}, Lorg/seamless/util/io/Base64Coder$OutputStream;->flushBase64()V

    .line 2029
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    const/4 v0, 0x0

    .line 2031
    iput-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    .line 2032
    iput-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2004
    iget v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    if-lez v0, :cond_1

    .line 2005
    iget-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->encode:Z

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    iget-object v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    iget v3, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    iget v4, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lorg/seamless/util/io/Base64Coder;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 2007
    iput v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    goto :goto_0

    .line 2010
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeEncoding()V
    .locals 1

    const/4 v0, 0x0

    .line 2059
    iput-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2046
    invoke-virtual {p0}, Lorg/seamless/util/io/Base64Coder$OutputStream;->flushBase64()V

    const/4 v0, 0x1

    .line 2047
    iput-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1930
    iget-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 1936
    :cond_0
    iget-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->encode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1937
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    iget v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 1938
    iget p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    iget v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->bufferLength:I

    if-lt p1, v0, :cond_4

    .line 1940
    iget-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    iget-object v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    iget v3, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->bufferLength:I

    iget v4, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->options:I

    invoke-static {v0, v2, v3, v4}, Lorg/seamless/util/io/Base64Coder;->access$300([B[BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1942
    iget p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    .line 1943
    iget-boolean p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->breakLines:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    const/16 v0, 0x4c

    if-lt p1, v0, :cond_1

    .line 1944
    iget-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1945
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    .line 1948
    :cond_1
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    goto :goto_0

    .line 1955
    :cond_2
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v0, v0, v2

    const/4 v3, -0x5

    if-le v0, v3, :cond_3

    .line 1956
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    iget v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 1957
    iget p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    iget v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->bufferLength:I

    if-lt p1, v0, :cond_4

    .line 1959
    iget-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    iget v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->options:I

    invoke-static {p1, v1, v0, v1, v2}, Lorg/seamless/util/io/Base64Coder;->access$200([BI[BII)I

    move-result p1

    .line 1960
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 1961
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    goto :goto_0

    .line 1964
    :cond_3
    iget-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->decodabet:[B

    aget-byte p1, p1, v2

    if-eq p1, v3, :cond_4

    .line 1965
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid character in Base64 data."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1985
    iget-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_0

    .line 1986
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 1991
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/seamless/util/io/Base64Coder$OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
