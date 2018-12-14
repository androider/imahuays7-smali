.class Lanet/channel/g/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/g/a;


# direct methods
.method constructor <init>(Lanet/channel/g/a;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lanet/channel/g/i;->a:Lanet/channel/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 328
    iget-object v0, p0, Lanet/channel/g/i;->a:Lanet/channel/g/a;

    iget-boolean v0, v0, Lanet/channel/g/a;->u:Z

    if-eqz v0, :cond_1

    const-string v0, "awcn.TnetSpdySession"

    const-string v1, "send msg time out!"

    .line 329
    iget-object v2, p0, Lanet/channel/g/i;->a:Lanet/channel/g/a;

    iget-object v2, v2, Lanet/channel/g/a;->m:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "pingUnRcv:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lanet/channel/g/i;->a:Lanet/channel/g/a;

    iget-boolean v5, v5, Lanet/channel/g/a;->u:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/h/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :try_start_0
    iget-object v0, p0, Lanet/channel/g/i;->a:Lanet/channel/g/a;

    sget-object v1, Lanet/channel/entity/EventType;->DATA_TIMEOUT:Lanet/channel/entity/EventType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lanet/channel/g/a;->a(Lanet/channel/g/a;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    .line 332
    iget-object v0, p0, Lanet/channel/g/i;->a:Lanet/channel/g/a;

    iget-object v0, v0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lanet/channel/g/i;->a:Lanet/channel/g/a;

    iget-object v0, v0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    const-string v1, "ping time out"

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 335
    :cond_0
    iget-object v0, p0, Lanet/channel/g/i;->a:Lanet/channel/g/a;

    invoke-virtual {v0}, Lanet/channel/g/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 338
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
