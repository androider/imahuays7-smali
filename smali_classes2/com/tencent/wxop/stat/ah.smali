.class final Lcom/tencent/wxop/stat/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/ah;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/wxop/stat/ah;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/wxop/stat/ah;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/ah;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->h()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->h()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/wxop/stat/ah;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v4, 0x0

    sub-long v4, v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    move-object v6, v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/wxop/stat/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "-"

    :cond_1
    move-object v3, v0

    new-instance v0, Lcom/tencent/wxop/stat/event/j;

    iget-object v2, p0, Lcom/tencent/wxop/stat/ah;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/wxop/stat/ah;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/wxop/stat/ah;->a:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/wxop/stat/ah;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-static {v1, v5, v7}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/StatSpecifyReportedInfo;)I

    move-result v5

    iget-object v7, p0, Lcom/tencent/wxop/stat/ah;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/wxop/stat/event/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/ah;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v1

    const-string v2, "Invalid invocation since previous onResume on diff page."

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Lcom/tencent/wxop/stat/aq;

    invoke-direct {v1, v0}, Lcom/tencent/wxop/stat/aq;-><init>(Lcom/tencent/wxop/stat/event/e;)V

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/aq;->a()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/ah;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_3
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starttime for PageID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wxop/stat/ah;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found, lost onResume()?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/ah;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method
