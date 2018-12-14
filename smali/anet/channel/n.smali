.class Lanet/channel/n;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/g$a;


# direct methods
.method constructor <init>(Lanet/channel/g$a;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lanet/channel/n;->a:Lanet/channel/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 537
    :try_start_0
    sget-wide v1, Lanet/channel/h/b;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lanet/channel/h/b;->a:J

    const/4 v5, 0x0

    sub-long v5, v1, v3

    const-wide/32 v1, 0x493e0

    cmp-long v3, v5, v1

    if-lez v3, :cond_0

    .line 539
    iget-object v1, p0, Lanet/channel/n;->a:Lanet/channel/g$a;

    iget-object v1, v1, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v1, v1, Lanet/channel/g;->h:Lanet/channel/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lanet/channel/a;->a(Z)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v1, p0, Lanet/channel/n;->a:Lanet/channel/g$a;

    iget-object v1, v1, Lanet/channel/g$a;->b:Lanet/channel/g;

    iget-object v1, v1, Lanet/channel/g;->h:Lanet/channel/a;

    invoke-virtual {v1}, Lanet/channel/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 544
    :try_start_1
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :goto_0
    iget-object v1, p0, Lanet/channel/n;->a:Lanet/channel/g$a;

    iput-boolean v0, v1, Lanet/channel/g$a;->a:Z

    return-void

    :goto_1
    iget-object v2, p0, Lanet/channel/n;->a:Lanet/channel/g$a;

    iput-boolean v0, v2, Lanet/channel/g$a;->a:Z

    throw v1
.end method
