.class Lanet/channel/g/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/request/d;

.field final synthetic b:Lanet/channel/g/e;


# direct methods
.method constructor <init>(Lanet/channel/g/e;Lanet/channel/request/d;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lanet/channel/g/f;->b:Lanet/channel/g/e;

    iput-object p2, p0, Lanet/channel/g/f;->a:Lanet/channel/request/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    iget-object v2, p0, Lanet/channel/g/f;->a:Lanet/channel/request/d;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lanet/channel/g/c;->a(Lanet/channel/request/d;Lanet/channel/f;)Lanet/channel/g/c$a;

    move-result-object v2

    .line 70
    iget v3, v2, Lanet/channel/g/c$a;->a:I

    if-lez v3, :cond_0

    .line 71
    new-instance v2, Lanet/channel/entity/c;

    sget-object v3, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v2, v3}, Lanet/channel/entity/c;-><init>(Lanet/channel/entity/EventType;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v5, v3, v0

    iput-wide v5, v2, Lanet/channel/entity/c;->a:J

    .line 73
    iget-object v0, p0, Lanet/channel/g/f;->b:Lanet/channel/g/e;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    invoke-static {v0, v1, v2}, Lanet/channel/g/e;->a(Lanet/channel/g/e;Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lanet/channel/g/f;->b:Lanet/channel/g/e;

    sget-object v1, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    new-instance v3, Lanet/channel/entity/e;

    sget-object v4, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    iget v2, v2, Lanet/channel/g/c$a;->a:I

    const-string v5, "Http connect fail"

    invoke-direct {v3, v4, v2, v5}, Lanet/channel/entity/e;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    invoke-static {v0, v1, v3}, Lanet/channel/g/e;->a(Lanet/channel/g/e;Lanet/channel/entity/EventType;Lanet/channel/entity/e;)V

    :goto_0
    return-void
.end method
