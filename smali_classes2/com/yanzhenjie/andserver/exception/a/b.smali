.class public Lcom/yanzhenjie/andserver/exception/a/b;
.super Ljava/lang/Object;
.source "SimpleExceptionResolver.java"

# interfaces
.implements Lcom/yanzhenjie/andserver/exception/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;)Lcom/yanzhenjie/andserver/g/a;
    .locals 3

    .line 46
    instance-of v0, p1, Lcom/yanzhenjie/andserver/exception/BaseException;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lcom/yanzhenjie/andserver/exception/BaseException;

    .line 48
    new-instance v0, Lcom/yanzhenjie/andserver/g/a;

    invoke-virtual {p1}, Lcom/yanzhenjie/andserver/exception/BaseException;->getHttpCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/yanzhenjie/andserver/exception/BaseException;->getHttpBody()Lorg/apache/httpcore/j;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/yanzhenjie/andserver/g/a;-><init>(ILorg/apache/httpcore/j;)V

    return-object v0

    :cond_0
    const-string v0, "Server error occurred:\n%1$s"

    const/4 v1, 0x1

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance v0, Lorg/apache/httpcore/entity/f;

    sget-object v1, Lorg/apache/httpcore/entity/ContentType;->TEXT_PLAIN:Lorg/apache/httpcore/entity/ContentType;

    invoke-direct {v0, p1, v1}, Lorg/apache/httpcore/entity/f;-><init>(Ljava/lang/String;Lorg/apache/httpcore/entity/ContentType;)V

    .line 52
    new-instance p1, Lcom/yanzhenjie/andserver/g/a;

    const/16 v1, 0x1f4

    invoke-direct {p1, v1, v0}, Lcom/yanzhenjie/andserver/g/a;-><init>(ILorg/apache/httpcore/j;)V

    return-object p1
.end method

.method public a(Ljava/lang/Exception;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;)Lcom/yanzhenjie/andserver/g/a;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/andserver/exception/a/b;->a(Ljava/lang/Exception;)Lcom/yanzhenjie/andserver/g/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Exception;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/andserver/exception/a/b;->a(Ljava/lang/Exception;Lorg/apache/httpcore/n;Lorg/apache/httpcore/q;)Lcom/yanzhenjie/andserver/g/a;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/yanzhenjie/andserver/g/a;->a()I

    move-result p2

    invoke-interface {p3, p2}, Lorg/apache/httpcore/q;->a(I)V

    .line 37
    invoke-virtual {p1}, Lcom/yanzhenjie/andserver/g/a;->c()Lorg/apache/httpcore/j;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/apache/httpcore/q;->a(Lorg/apache/httpcore/j;)V

    .line 38
    invoke-virtual {p1}, Lcom/yanzhenjie/andserver/g/a;->b()[Lorg/apache/httpcore/e;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/apache/httpcore/q;->a([Lorg/apache/httpcore/e;)V

    return-void
.end method
