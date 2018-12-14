.class public Lorg/apache/httpcore/b/c/c;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# instance fields
.field private final a:Lorg/apache/httpcore/c/g;

.field private final b:Lorg/apache/httpcore/util/CharArrayBuffer;

.field private final c:Lorg/apache/httpcore/a/b;

.field private d:I

.field private e:J

.field private f:J

.field private g:Z

.field private h:Z

.field private i:[Lorg/apache/httpcore/e;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/g;Lorg/apache/httpcore/a/b;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    .line 86
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->h:Z

    .line 88
    new-array v0, v0, [Lorg/apache/httpcore/e;

    iput-object v0, p0, Lorg/apache/httpcore/b/c/c;->i:[Lorg/apache/httpcore/e;

    const-string v0, "Session input buffer"

    .line 101
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/c/g;

    iput-object p1, p0, Lorg/apache/httpcore/b/c/c;->a:Lorg/apache/httpcore/c/g;

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lorg/apache/httpcore/b/c/c;->f:J

    .line 103
    new-instance p1, Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    sget-object p2, Lorg/apache/httpcore/a/b;->a:Lorg/apache/httpcore/a/b;

    :goto_0
    iput-object p2, p0, Lorg/apache/httpcore/b/c/c;->c:Lorg/apache/httpcore/a/b;

    const/4 p1, 0x1

    .line 105
    iput p1, p0, Lorg/apache/httpcore/b/c/c;->d:I

    return-void
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget v0, p0, Lorg/apache/httpcore/b/c/c;->d:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 222
    new-instance v0, Lorg/apache/httpcore/MalformedChunkCodingException;

    const-string v1, "Corrupt data stream"

    invoke-direct {v0, v1}, Lorg/apache/httpcore/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/c;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/httpcore/b/c/c;->e:J

    .line 226
    iget-wide v2, p0, Lorg/apache/httpcore/b/c/c;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 227
    new-instance v0, Lorg/apache/httpcore/MalformedChunkCodingException;

    const-string v2, "Negative chunk size"

    invoke-direct {v0, v2}, Lorg/apache/httpcore/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    .line 229
    iput v0, p0, Lorg/apache/httpcore/b/c/c;->d:I

    .line 230
    iput-wide v4, p0, Lorg/apache/httpcore/b/c/c;->f:J

    .line 231
    iget-wide v2, p0, Lorg/apache/httpcore/b/c/c;->e:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    .line 233
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/c;->c()V
    :try_end_0
    .catch Lorg/apache/httpcore/MalformedChunkCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 236
    iput v1, p0, Lorg/apache/httpcore/b/c/c;->d:I

    .line 237
    throw v0
.end method

.method private b()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget v0, p0, Lorg/apache/httpcore/b/c/c;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->clear()V

    .line 251
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->a:Lorg/apache/httpcore/c/g;

    iget-object v3, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-interface {v0, v3}, Lorg/apache/httpcore/c/g;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 253
    new-instance v0, Lorg/apache/httpcore/MalformedChunkCodingException;

    const-string v1, "CRLF expected at end of chunk"

    invoke-direct {v0, v1}, Lorg/apache/httpcore/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    new-instance v0, Lorg/apache/httpcore/MalformedChunkCodingException;

    const-string v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, Lorg/apache/httpcore/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    iput v2, p0, Lorg/apache/httpcore/b/c/c;->d:I

    .line 263
    :cond_3
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->clear()V

    .line 264
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->a:Lorg/apache/httpcore/c/g;

    iget-object v2, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-interface {v0, v2}, Lorg/apache/httpcore/c/g;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 266
    new-instance v0, Lorg/apache/httpcore/ConnectionClosedException;

    const-string v1, "Premature end of chunk coded message body: closing chunk expected"

    invoke-direct {v0, v1}, Lorg/apache/httpcore/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_4
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 271
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v0

    .line 273
    :cond_5
    iget-object v1, p0, Lorg/apache/httpcore/b/c/c;->b:Lorg/apache/httpcore/util/CharArrayBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 275
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 277
    :catch_0
    new-instance v1, Lorg/apache/httpcore/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad chunk header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/httpcore/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    :try_start_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->a:Lorg/apache/httpcore/c/g;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/c;->c:Lorg/apache/httpcore/a/b;

    .line 291
    invoke-virtual {v1}, Lorg/apache/httpcore/a/b;->b()I

    move-result v1

    iget-object v2, p0, Lorg/apache/httpcore/b/c/c;->c:Lorg/apache/httpcore/a/b;

    .line 292
    invoke-virtual {v2}, Lorg/apache/httpcore/a/b;->a()I

    move-result v2

    const/4 v3, 0x0

    .line 290
    invoke-static {v0, v1, v2, v3}, Lorg/apache/httpcore/b/c/a;->a(Lorg/apache/httpcore/c/g;IILorg/apache/httpcore/message/n;)[Lorg/apache/httpcore/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/httpcore/b/c/c;->i:[Lorg/apache/httpcore/e;
    :try_end_0
    .catch Lorg/apache/httpcore/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Lorg/apache/httpcore/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Lorg/apache/httpcore/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/httpcore/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 298
    throw v1
.end method


# virtual methods
.method public available()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->a:Lorg/apache/httpcore/c/g;

    instance-of v0, v0, Lorg/apache/httpcore/c/a;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->a:Lorg/apache/httpcore/c/g;

    check-cast v0, Lorg/apache/httpcore/c/a;

    invoke-interface {v0}, Lorg/apache/httpcore/c/a;->b()I

    move-result v0

    int-to-long v0, v0

    .line 121
    iget-wide v2, p0, Lorg/apache/httpcore/b/c/c;->e:J

    iget-wide v4, p0, Lorg/apache/httpcore/b/c/c;->f:J

    sub-long v6, v2, v4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 312
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/httpcore/b/c/c;->d:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/16 v1, 0x800

    .line 314
    new-array v1, v1, [B

    .line 315
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/httpcore/b/c/c;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    .line 320
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->h:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 319
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    .line 320
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->h:Z

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->h:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 147
    :cond_1
    iget v0, p0, Lorg/apache/httpcore/b/c/c;->d:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 148
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/c;->a()V

    .line 149
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    if-eqz v0, :cond_2

    return v1

    .line 153
    :cond_2
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->a:Lorg/apache/httpcore/c/g;

    invoke-interface {v0}, Lorg/apache/httpcore/c/g;->f()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 155
    iget-wide v1, p0, Lorg/apache/httpcore/b/c/c;->f:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lorg/apache/httpcore/b/c/c;->f:J

    .line 156
    iget-wide v1, p0, Lorg/apache/httpcore/b/c/c;->f:J

    iget-wide v3, p0, Lorg/apache/httpcore/b/c/c;->e:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    const/4 v1, 0x3

    .line 157
    iput v1, p0, Lorg/apache/httpcore/b/c/c;->d:I

    :cond_3
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/httpcore/b/c/c;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->h:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_0
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 183
    :cond_1
    iget v0, p0, Lorg/apache/httpcore/b/c/c;->d:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 184
    invoke-direct {p0}, Lorg/apache/httpcore/b/c/c;->a()V

    .line 185
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    if-eqz v0, :cond_2

    return v1

    .line 189
    :cond_2
    iget-object v0, p0, Lorg/apache/httpcore/b/c/c;->a:Lorg/apache/httpcore/c/g;

    int-to-long v2, p3

    iget-wide v4, p0, Lorg/apache/httpcore/b/c/c;->e:J

    iget-wide v6, p0, Lorg/apache/httpcore/b/c/c;->f:J

    sub-long v8, v4, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/httpcore/c/g;->a([BII)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 191
    iget-wide p2, p0, Lorg/apache/httpcore/b/c/c;->f:J

    int-to-long v0, p1

    add-long v2, p2, v0

    iput-wide v2, p0, Lorg/apache/httpcore/b/c/c;->f:J

    .line 192
    iget-wide p2, p0, Lorg/apache/httpcore/b/c/c;->f:J

    iget-wide v0, p0, Lorg/apache/httpcore/b/c/c;->e:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    const/4 p2, 0x3

    .line 193
    iput p2, p0, Lorg/apache/httpcore/b/c/c;->d:I

    :cond_3
    return p1

    :cond_4
    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lorg/apache/httpcore/b/c/c;->g:Z

    .line 198
    new-instance p1, Lorg/apache/httpcore/TruncatedChunkException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Truncated chunk ( expected size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/apache/httpcore/b/c/c;->e:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "; actual size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/apache/httpcore/b/c/c;->f:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/httpcore/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
