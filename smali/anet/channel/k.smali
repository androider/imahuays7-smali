.class Lanet/channel/k;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/entity/EventType;

.field final synthetic b:Lanet/channel/entity/e;

.field final synthetic c:Lanet/channel/Session;


# direct methods
.method constructor <init>(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lanet/channel/k;->c:Lanet/channel/Session;

    iput-object p2, p0, Lanet/channel/k;->a:Lanet/channel/entity/EventType;

    iput-object p3, p0, Lanet/channel/k;->b:Lanet/channel/entity/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 230
    :try_start_0
    iget-object v1, p0, Lanet/channel/k;->c:Lanet/channel/Session;

    iget-object v1, v1, Lanet/channel/Session;->b:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lanet/channel/k;->a:Lanet/channel/entity/EventType;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lanet/channel/k;->c:Lanet/channel/Session;

    iget-object v1, v1, Lanet/channel/Session;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/entity/a;

    if-eqz v2, :cond_0

    .line 233
    iget-object v3, p0, Lanet/channel/k;->c:Lanet/channel/Session;

    iget-object v3, v3, Lanet/channel/Session;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 234
    iget-object v4, p0, Lanet/channel/k;->a:Lanet/channel/entity/EventType;

    invoke-virtual {v4}, Lanet/channel/entity/EventType;->getType()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 236
    :try_start_1
    iget-object v3, p0, Lanet/channel/k;->c:Lanet/channel/Session;

    iget-object v4, p0, Lanet/channel/k;->a:Lanet/channel/entity/EventType;

    iget-object v5, p0, Lanet/channel/k;->b:Lanet/channel/entity/e;

    invoke-interface {v2, v3, v4, v5}, Lanet/channel/entity/a;->a(Lanet/channel/Session;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "awcn.Session"

    .line 238
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lanet/channel/k;->c:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->m:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "awcn.Session"

    const-string v3, "handleCallbacks"

    .line 246
    iget-object v4, p0, Lanet/channel/k;->c:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->m:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v0}, Lanet/channel/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
