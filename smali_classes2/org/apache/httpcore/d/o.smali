.class public Lorg/apache/httpcore/d/o;
.super Ljava/lang/Object;
.source "ResponseContent.java"

# interfaces
.implements Lorg/apache/httpcore/s;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lorg/apache/httpcore/d/o;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Lorg/apache/httpcore/d/o;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "HTTP response"

    .line 94
    invoke-static {p1, p2}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-boolean p2, p0, Lorg/apache/httpcore/d/o;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "Transfer-Encoding"

    .line 96
    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->d(Ljava/lang/String;)V

    const-string p2, "Content-Length"

    .line 97
    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "Transfer-Encoding"

    .line 99
    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 100
    new-instance p1, Lorg/apache/httpcore/ProtocolException;

    const-string p2, "Transfer-encoding header already present"

    invoke-direct {p1, p2}, Lorg/apache/httpcore/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p2, "Content-Length"

    .line 102
    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 103
    new-instance p1, Lorg/apache/httpcore/ProtocolException;

    const-string p2, "Content-Length header already present"

    invoke-direct {p1, p2}, Lorg/apache/httpcore/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/httpcore/x;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object p2

    .line 107
    invoke-interface {p1}, Lorg/apache/httpcore/q;->b()Lorg/apache/httpcore/j;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 109
    invoke-interface {v0}, Lorg/apache/httpcore/j;->b()J

    move-result-wide v1

    .line 110
    invoke-interface {v0}, Lorg/apache/httpcore/j;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lorg/apache/httpcore/HttpVersion;->HTTP_1_0:Lorg/apache/httpcore/HttpVersion;

    invoke-virtual {p2, v3}, Lorg/apache/httpcore/ProtocolVersion;->lessEquals(Lorg/apache/httpcore/ProtocolVersion;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "Transfer-Encoding"

    const-string v1, "chunked"

    .line 111
    invoke-interface {p1, p2, v1}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-ltz p2, :cond_4

    const-string p2, "Content-Length"

    .line 113
    invoke-interface {v0}, Lorg/apache/httpcore/j;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_4
    :goto_1
    invoke-interface {v0}, Lorg/apache/httpcore/j;->c()Lorg/apache/httpcore/e;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p2, "Content-Type"

    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 118
    invoke-interface {v0}, Lorg/apache/httpcore/j;->c()Lorg/apache/httpcore/e;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->a(Lorg/apache/httpcore/e;)V

    .line 121
    :cond_5
    invoke-interface {v0}, Lorg/apache/httpcore/j;->d()Lorg/apache/httpcore/e;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string p2, "Content-Encoding"

    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 123
    invoke-interface {v0}, Lorg/apache/httpcore/j;->d()Lorg/apache/httpcore/e;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/httpcore/q;->a(Lorg/apache/httpcore/e;)V

    goto :goto_2

    .line 126
    :cond_6
    invoke-interface {p1}, Lorg/apache/httpcore/q;->a()Lorg/apache/httpcore/x;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/httpcore/x;->getStatusCode()I

    move-result p2

    const/16 v0, 0xcc

    if-eq p2, v0, :cond_7

    const/16 v0, 0x130

    if-eq p2, v0, :cond_7

    const/16 v0, 0xcd

    if-eq p2, v0, :cond_7

    const-string p2, "Content-Length"

    const-string v0, "0"

    .line 130
    invoke-interface {p1, p2, v0}, Lorg/apache/httpcore/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
