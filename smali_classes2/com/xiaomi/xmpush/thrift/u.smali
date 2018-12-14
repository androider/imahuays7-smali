.class public Lcom/xiaomi/xmpush/thrift/u;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/apache/thrift/a;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a<",
            "TT;*>;>(TT;[B)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Lorg/apache/thrift/d;

    const-string p1, "the message byte is empty."

    invoke-direct {p0, p1}, Lorg/apache/thrift/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance v0, Lorg/apache/thrift/c;

    new-instance v1, Lorg/apache/thrift/protocol/k$a;

    array-length v2, p1

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lorg/apache/thrift/protocol/k$a;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lorg/apache/thrift/c;-><init>(Lorg/apache/thrift/protocol/g;)V

    invoke-virtual {v0, p0, p1}, Lorg/apache/thrift/c;->a(Lorg/apache/thrift/a;[B)V

    return-void
.end method

.method public static a(Lorg/apache/thrift/a;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a<",
            "TT;*>;>(TT;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/thrift/e;

    new-instance v2, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v2}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/thrift/e;-><init>(Lorg/apache/thrift/protocol/g;)V

    invoke-virtual {v1, p0}, Lorg/apache/thrift/e;->a(Lorg/apache/thrift/a;)[B

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/thrift/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "convertThriftObjectToBytes catch TException."

    invoke-static {v1, p0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
