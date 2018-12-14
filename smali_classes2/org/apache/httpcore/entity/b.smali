.class public Lorg/apache/httpcore/entity/b;
.super Lorg/apache/httpcore/entity/a;
.source "BasicHttpEntity.java"


# instance fields
.field private d:Ljava/io/InputStream;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lorg/apache/httpcore/entity/a;-><init>()V

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lorg/apache/httpcore/entity/b;->e:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lorg/apache/httpcore/entity/b;->e:J

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/httpcore/entity/b;->d:Ljava/io/InputStream;

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    .line 111
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lorg/apache/httpcore/entity/b;->e()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    .line 115
    :try_start_0
    new-array v1, v1, [B

    .line 116
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public b()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/apache/httpcore/entity/b;->e:J

    return-wide v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/httpcore/entity/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Content has not been provided"

    invoke-static {v0, v1}, Lorg/apache/httpcore/util/b;->a(ZLjava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/apache/httpcore/entity/b;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/apache/httpcore/entity/b;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/httpcore/entity/b;->d:Ljava/io/InputStream;

    sget-object v1, Lorg/apache/httpcore/b/c/k;->a:Lorg/apache/httpcore/b/c/k;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
