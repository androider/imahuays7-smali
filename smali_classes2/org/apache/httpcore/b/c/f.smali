.class public Lorg/apache/httpcore/b/c/f;
.super Ljava/io/OutputStream;
.source "ContentLengthOutputStream.java"


# instance fields
.field private final a:Lorg/apache/httpcore/c/h;

.field private final b:J

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/h;J)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lorg/apache/httpcore/b/c/f;->c:J

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/f;->d:Z

    const-string v0, "Session output buffer"

    .line 80
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/c/h;

    iput-object p1, p0, Lorg/apache/httpcore/b/c/f;->a:Lorg/apache/httpcore/c/h;

    const-string p1, "Content length"

    .line 81
    invoke-static {p2, p3, p1}, Lorg/apache/httpcore/util/a;->a(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/httpcore/b/c/f;->b:J

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

    .line 91
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/f;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/apache/httpcore/b/c/f;->d:Z

    .line 93
    iget-object v0, p0, Lorg/apache/httpcore/b/c/f;->a:Lorg/apache/httpcore/c/h;

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

    .line 99
    iget-object v0, p0, Lorg/apache/httpcore/b/c/f;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0}, Lorg/apache/httpcore/c/h;->c()V

    return-void
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/f;->d:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempted write to closed stream."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_0
    iget-wide v0, p0, Lorg/apache/httpcore/b/c/f;->c:J

    iget-wide v2, p0, Lorg/apache/httpcore/b/c/f;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 129
    iget-object v0, p0, Lorg/apache/httpcore/b/c/f;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0, p1}, Lorg/apache/httpcore/c/h;->a(I)V

    .line 130
    iget-wide v0, p0, Lorg/apache/httpcore/b/c/f;->c:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lorg/apache/httpcore/b/c/f;->c:J

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

    .line 120
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/httpcore/b/c/f;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lorg/apache/httpcore/b/c/f;->d:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempted write to closed stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_0
    iget-wide v0, p0, Lorg/apache/httpcore/b/c/f;->c:J

    iget-wide v2, p0, Lorg/apache/httpcore/b/c/f;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 108
    iget-wide v0, p0, Lorg/apache/httpcore/b/c/f;->b:J

    iget-wide v2, p0, Lorg/apache/httpcore/b/c/f;->c:J

    sub-long v4, v0, v2

    int-to-long v0, p3

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    long-to-int p3, v4

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/apache/httpcore/b/c/f;->a:Lorg/apache/httpcore/c/h;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/httpcore/c/h;->a([BII)V

    .line 114
    iget-wide p1, p0, Lorg/apache/httpcore/b/c/f;->c:J

    int-to-long v0, p3

    add-long v2, p1, v0

    iput-wide v2, p0, Lorg/apache/httpcore/b/c/f;->c:J

    :cond_2
    return-void
.end method
