.class public Lorg/apache/httpcore/b/c/e;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private final a:J

.field private b:J

.field private c:Z

.field private d:Lorg/apache/httpcore/c/g;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/g;J)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lorg/apache/httpcore/b/c/e;->b:J

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/e;->c:Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lorg/apache/httpcore/b/c/e;->d:Lorg/apache/httpcore/c/g;

    const-string v0, "Session input buffer"

    .line 84
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/c/g;

    iput-object p1, p0, Lorg/apache/httpcore/b/c/e;->d:Lorg/apache/httpcore/c/g;

    const-string p1, "Content length"

    .line 85
    invoke-static {p2, p3, p1}, Lorg/apache/httpcore/util/a;->a(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/httpcore/b/c/e;->a:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/httpcore/b/c/e;->d:Lorg/apache/httpcore/c/g;

    instance-of v0, v0, Lorg/apache/httpcore/c/a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/apache/httpcore/b/c/e;->d:Lorg/apache/httpcore/c/g;

    check-cast v0, Lorg/apache/httpcore/c/a;

    invoke-interface {v0}, Lorg/apache/httpcore/c/a;->b()I

    move-result v0

    .line 116
    iget-wide v1, p0, Lorg/apache/httpcore/b/c/e;->a:J

    iget-wide v3, p0, Lorg/apache/httpcore/b/c/e;->b:J

    sub-long v5, v1, v3

    long-to-int v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/e;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 99
    :try_start_0
    iget-wide v1, p0, Lorg/apache/httpcore/b/c/e;->b:J

    iget-wide v3, p0, Lorg/apache/httpcore/b/c/e;->a:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/16 v1, 0x800

    .line 100
    new-array v1, v1, [B

    .line 101
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/httpcore/b/c/e;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/e;->c:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/e;->c:Z

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/e;->c:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-wide v0, p0, Lorg/apache/httpcore/b/c/e;->b:J

    iget-wide v2, p0, Lorg/apache/httpcore/b/c/e;->a:J

    cmp-long v4, v0, v2

    const/4 v0, -0x1

    if-ltz v4, :cond_1

    return v0

    .line 137
    :cond_1
    iget-object v1, p0, Lorg/apache/httpcore/b/c/e;->d:Lorg/apache/httpcore/c/g;

    invoke-interface {v1}, Lorg/apache/httpcore/c/g;->f()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 139
    iget-wide v2, p0, Lorg/apache/httpcore/b/c/e;->b:J

    iget-wide v4, p0, Lorg/apache/httpcore/b/c/e;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 140
    new-instance v0, Lorg/apache/httpcore/ConnectionClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/httpcore/b/c/e;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/httpcore/b/c/e;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/httpcore/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2
    iget-wide v2, p0, Lorg/apache/httpcore/b/c/e;->b:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, p0, Lorg/apache/httpcore/b/c/e;->b:J

    :cond_3
    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/httpcore/b/c/e;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/e;->c:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted read from closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_0
    iget-wide v0, p0, Lorg/apache/httpcore/b/c/e;->b:J

    iget-wide v2, p0, Lorg/apache/httpcore/b/c/e;->a:J

    cmp-long v4, v0, v2

    const/4 v0, -0x1

    if-ltz v4, :cond_1

    return v0

    .line 173
    :cond_1
    iget-wide v1, p0, Lorg/apache/httpcore/b/c/e;->b:J

    int-to-long v3, p3

    add-long v5, v1, v3

    iget-wide v1, p0, Lorg/apache/httpcore/b/c/e;->a:J

    cmp-long v3, v5, v1

    if-lez v3, :cond_2

    .line 174
    iget-wide v1, p0, Lorg/apache/httpcore/b/c/e;->a:J

    iget-wide v3, p0, Lorg/apache/httpcore/b/c/e;->b:J

    sub-long v5, v1, v3

    long-to-int p3, v5

    .line 176
    :cond_2
    iget-object v1, p0, Lorg/apache/httpcore/b/c/e;->d:Lorg/apache/httpcore/c/g;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/httpcore/c/g;->a([BII)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 177
    iget-wide p2, p0, Lorg/apache/httpcore/b/c/e;->b:J

    iget-wide v0, p0, Lorg/apache/httpcore/b/c/e;->a:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_3

    .line 178
    new-instance p1, Lorg/apache/httpcore/ConnectionClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/apache/httpcore/b/c/e;->a:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "; received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/apache/httpcore/b/c/e;->b:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/httpcore/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-lez p1, :cond_4

    .line 183
    iget-wide p2, p0, Lorg/apache/httpcore/b/c/e;->b:J

    int-to-long v0, p1

    add-long v2, p2, v0

    iput-wide v2, p0, Lorg/apache/httpcore/b/c/e;->b:J

    :cond_4
    return p1
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x800

    .line 214
    new-array v2, v2, [B

    .line 217
    iget-wide v3, p0, Lorg/apache/httpcore/b/c/e;->a:J

    iget-wide v5, p0, Lorg/apache/httpcore/b/c/e;->b:J

    sub-long v7, v3, v5

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v3, v0

    :goto_0
    cmp-long v5, p1, v0

    if-lez v5, :cond_2

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    .line 221
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v2, v5, v6}, Lorg/apache/httpcore/b/c/e;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v5, v5

    add-long v7, v3, v5

    sub-long v3, p1, v5

    move-wide p1, v3

    move-wide v3, v7

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v3
.end method
