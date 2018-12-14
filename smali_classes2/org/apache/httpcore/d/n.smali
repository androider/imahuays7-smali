.class public Lorg/apache/httpcore/d/n;
.super Ljava/lang/Object;
.source "ResponseConnControl.java"

# interfaces
.implements Lorg/apache/httpcore/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP response"

    .line 63
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-static {p2}, Lorg/apache/httpcore/d/e;->a(Lorg/apache/httpcore/d/d;)Lorg/apache/httpcore/d/e;

    move-result-object p2

    .line 68
    invoke-interface {p1}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/httpcore/x;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_6

    const/16 v1, 0x198

    if-eq v0, v1, :cond_6

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_6

    const/16 v1, 0x19d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "Connection"

    .line 79
    invoke-interface {p1, v0}, Lorg/apache/httpcore/q;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Close"

    .line 80
    invoke-interface {v0}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-interface {p1}, Lorg/apache/httpcore/q;->b()Lorg/apache/httpcore/j;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 88
    invoke-interface {p1}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/httpcore/x;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object v1

    .line 89
    invoke-interface {v0}, Lorg/apache/httpcore/j;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 90
    invoke-interface {v0}, Lorg/apache/httpcore/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/httpcore/HttpVersion;->HTTP_1_0:Lorg/apache/httpcore/HttpVersion;

    invoke-virtual {v1, v0}, Lorg/apache/httpcore/ProtocolVersion;->lessEquals(Lorg/apache/httpcore/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p2, "Connection"

    const-string v0, "Close"

    .line 91
    invoke-interface {p1, p2, v0}, Lorg/apache/httpcore/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_3
    invoke-virtual {p2}, Lorg/apache/httpcore/d/e;->a()Lorg/apache/httpcore/n;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "Connection"

    .line 98
    invoke-interface {p2, v0}, Lorg/apache/httpcore/n;->c(Ljava/lang/String;)Lorg/apache/httpcore/e;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string p2, "Connection"

    .line 100
    invoke-interface {v0}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/apache/httpcore/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-interface {p2}, Lorg/apache/httpcore/n;->c()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object p2

    sget-object v0, Lorg/apache/httpcore/HttpVersion;->HTTP_1_0:Lorg/apache/httpcore/HttpVersion;

    invoke-virtual {p2, v0}, Lorg/apache/httpcore/ProtocolVersion;->lessEquals(Lorg/apache/httpcore/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "Connection"

    const-string v0, "Close"

    .line 102
    invoke-interface {p1, p2, v0}, Lorg/apache/httpcore/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p2, "Connection"

    const-string v0, "Close"

    .line 76
    invoke-interface {p1, p2, v0}, Lorg/apache/httpcore/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
