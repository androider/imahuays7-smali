.class Lanet/channel/g/j;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/e$a;


# instance fields
.field final synthetic a:Lanet/channel/g/a;


# direct methods
.method constructor <init>(Lanet/channel/g/a;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 406
    iget-object v0, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lanet/channel/g/a;->a(Lanet/channel/g/a;Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    .line 407
    iget-object v0, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/g/a;->v:J

    .line 408
    iget-object v0, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object v0, v0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object v0, v0, Lanet/channel/g/a;->z:Lanet/channel/e/b;

    invoke-interface {v0}, Lanet/channel/e/b;->a()V

    .line 411
    :cond_0
    iget-object v0, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object v0, v0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    const-string v0, "awcn.TnetSpdySession"

    const-string v2, "spdyOnStreamResponse"

    .line 412
    iget-object v3, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object v3, v3, Lanet/channel/g/a;->m:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "authTime"

    aput-object v6, v4, v5

    iget-object v5, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object v5, v5, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    iget-wide v5, v5, Lanet/channel/statist/SessionStatistic;->authTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v3, v4}, Lanet/channel/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-wide v0, v0, Lanet/channel/g/a;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 414
    iget-object v0, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object v0, v0, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-wide v3, v3, Lanet/channel/g/a;->w:J

    sub-long v5, v1, v3

    iput-wide v5, v0, Lanet/channel/statist/SessionStatistic;->authTime:J

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 420
    iget-object p2, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    sget-object v0, Lanet/channel/Session$Status;->AUTH_FAIL:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lanet/channel/g/a;->b(Lanet/channel/g/a;Lanet/channel/Session$Status;Lanet/channel/entity/e;)V

    .line 421
    iget-object p2, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object p2, p2, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    if-eqz p2, :cond_0

    .line 422
    iget-object p2, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object p2, p2, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accs_Auth_Fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 423
    iget-object p2, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    iget-object p2, p2, Lanet/channel/g/a;->n:Lanet/channel/statist/SessionStatistic;

    int-to-long v0, p1

    iput-wide v0, p2, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 425
    :cond_0
    iget-object p1, p0, Lanet/channel/g/j;->a:Lanet/channel/g/a;

    invoke-virtual {p1}, Lanet/channel/g/a;->c()V

    return-void
.end method
