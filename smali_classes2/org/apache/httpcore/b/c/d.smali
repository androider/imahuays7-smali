.class public Lorg/apache/httpcore/b/c/d;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# instance fields
.field private final a:Lorg/apache/httpcore/c/h;

.field private final b:[B

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(ILorg/apache/httpcore/c/h;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/apache/httpcore/b/c/d;->c:I

    .line 56
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/d;->d:Z

    .line 59
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/d;->e:Z

    .line 99
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/httpcore/b/c/d;->b:[B

    .line 100
    iput-object p2, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lorg/apache/httpcore/b/c/d;->c:I

    if-lez v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    iget v1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/httpcore/c/h;->a(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/d;->b:[B

    iget v2, p0, Lorg/apache/httpcore/b/c/d;->c:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/httpcore/c/h;->a([BII)V

    .line 110
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/httpcore/c/h;->a(Ljava/lang/String;)V

    .line 111
    iput v3, p0, Lorg/apache/httpcore/b/c/d;->c:I

    :cond_0
    return-void
.end method

.method protected a([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    iget v1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/httpcore/c/h;->a(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/d;->b:[B

    iget v2, p0, Lorg/apache/httpcore/b/c/d;->c:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/httpcore/c/h;->a([BII)V

    .line 122
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/httpcore/c/h;->a([BII)V

    .line 123
    iget-object p1, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    const-string p2, ""

    invoke-interface {p1, p2}, Lorg/apache/httpcore/c/h;->a(Ljava/lang/String;)V

    .line 124
    iput v3, p0, Lorg/apache/httpcore/b/c/d;->c:I

    return-void
.end method

.method protected b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lorg/apache/httpcore/c/h;->a(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/apache/httpcore/c/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/d;->d:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/d;->a()V

    .line 142
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/d;->b()V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/d;->d:Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/d;->e:Z

    .line 202
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/d;->c()V

    .line 203
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0}, Lorg/apache/httpcore/c/h;->c()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/d;->a()V

    .line 192
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0}, Lorg/apache/httpcore/c/h;->c()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/d;->e:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->b:[B

    iget v1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 154
    iget p1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    .line 155
    iget p1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->b:[B

    array-length v0, v0

    if-ne p1, v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lorg/apache/httpcore/b/c/d;->a()V

    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/httpcore/b/c/d;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/d;->e:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->b:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_1

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/httpcore/b/c/d;->a([BII)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/apache/httpcore/b/c/d;->b:[B

    iget v1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget p1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/httpcore/b/c/d;->c:I

    :goto_0
    return-void
.end method
