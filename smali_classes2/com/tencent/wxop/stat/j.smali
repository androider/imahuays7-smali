.class Lcom/tencent/wxop/stat/j;
.super Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/i;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/j;->a:Lcom/tencent/wxop/stat/i;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x7530

    :cond_0
    return-wide p1
.end method
