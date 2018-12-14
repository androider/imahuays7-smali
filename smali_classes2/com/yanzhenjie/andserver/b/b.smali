.class public Lcom/yanzhenjie/andserver/b/b;
.super Ljava/lang/Object;
.source "HttpCacheFilter.java"

# interfaces
.implements Lcom/yanzhenjie/andserver/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-static {p1, p2}, Lcom/yanzhenjie/andserver/f/a;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yanzhenjie/andserver/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yanzhenjie/andserver/d;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lcom/yanzhenjie/andserver/d/b;

    if-eqz v0, :cond_0

    .line 51
    move-object v1, p1

    check-cast v1, Lcom/yanzhenjie/andserver/d/b;

    invoke-interface {v1, p2}, Lcom/yanzhenjie/andserver/d/b;->b(Lorg/apache/httpcore/n;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    const/4 v3, 0x0

    .line 56
    instance-of v4, p1, Lcom/yanzhenjie/andserver/d/a;

    if-eqz v4, :cond_1

    .line 57
    move-object v3, p1

    check-cast v3, Lcom/yanzhenjie/andserver/d/a;

    invoke-interface {v3, p2}, Lcom/yanzhenjie/andserver/d/a;->c(Lorg/apache/httpcore/n;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v5, "If-Unmodified-Since"

    .line 60
    invoke-interface {p2, v5}, Lorg/apache/httpcore/n;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v5

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    .line 62
    invoke-virtual {p0, p2, v1, v2}, Lcom/yanzhenjie/andserver/b/b;->b(Lorg/apache/httpcore/n;J)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 p1, 0x19c

    .line 63
    invoke-interface {p3, p1}, Lorg/apache/httpcore/q;->a(I)V

    return-void

    :cond_2
    const-string v5, "If-Modified-Since"

    .line 68
    invoke-interface {p2, v5}, Lorg/apache/httpcore/n;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v5

    const-string v6, "If-None-Match"

    .line 69
    invoke-interface {p2, v6}, Lorg/apache/httpcore/n;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v6

    const/16 v7, 0x130

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 72
    invoke-virtual {p0, p2, v1, v2}, Lcom/yanzhenjie/andserver/b/b;->a(Lorg/apache/httpcore/n;J)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p2, v3}, Lcom/yanzhenjie/andserver/b/b;->a(Lorg/apache/httpcore/n;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    invoke-interface {p3, v7}, Lorg/apache/httpcore/q;->a(I)V

    const-string p1, "Cache-Control"

    const-string p2, "public"

    .line 74
    invoke-interface {p3, p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Last-Modified"

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/yanzhenjie/andserver/b/b;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ETag"

    .line 76
    invoke-virtual {p0, v3}, Lcom/yanzhenjie/andserver/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    .line 83
    invoke-virtual {p0, p2, v1, v2}, Lcom/yanzhenjie/andserver/b/b;->a(Lorg/apache/httpcore/n;J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    invoke-interface {p3, v7}, Lorg/apache/httpcore/q;->a(I)V

    const-string p1, "Cache-Control"

    const-string p2, "public"

    .line 85
    invoke-interface {p3, p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Last-Modified"

    .line 86
    invoke-virtual {p0, v1, v2}, Lcom/yanzhenjie/andserver/b/b;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_4
    invoke-interface {p1, p2, p3, p4}, Lcom/yanzhenjie/andserver/d;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    if-eqz v0, :cond_5

    const-wide/16 p1, 0x0

    cmp-long p4, v1, p1

    if-ltz p4, :cond_5

    const-string p1, "Last-Modified"

    .line 94
    invoke-virtual {p0, v1, v2}, Lcom/yanzhenjie/andserver/b/b;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    const-string p1, "ETag"

    .line 97
    invoke-virtual {p0, v3}, Lcom/yanzhenjie/andserver/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    const-string p1, "Cache-Control"

    const-string p2, "public"

    .line 100
    invoke-interface {p3, p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected a(Lorg/apache/httpcore/n;J)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    const-string v2, "If-Modified-Since"

    .line 154
    invoke-static {p1, v2}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v4, v0

    if-gez p1, :cond_1

    return v3

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 158
    div-long/2addr p2, v0

    mul-long p2, p2, v0

    cmp-long p1, v4, p2

    if-ltz p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method protected a(Lorg/apache/httpcore/n;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "If-None-Match"

    .line 123
    invoke-interface {p1, v0}, Lorg/apache/httpcore/n;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object p1

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 127
    invoke-interface {p1}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected b(Lorg/apache/httpcore/n;J)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    const-string v2, "If-Unmodified-Since"

    .line 172
    invoke-static {p1, v2}, Lcom/yanzhenjie/andserver/f/e;->a(Lorg/apache/httpcore/n;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v4, v0

    if-gez p1, :cond_1

    return v3

    :cond_1
    const-wide/16 v0, 0x3e8

    .line 176
    div-long/2addr p2, v0

    mul-long p2, p2, v0

    cmp-long p1, v4, p2

    if-gez p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method
