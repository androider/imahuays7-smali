.class Lcom/tencent/wxop/stat/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isAutoExceptionCaught()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    new-instance v8, Lcom/tencent/wxop/stat/event/d;

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v10, v9}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/StatSpecifyReportedInfo;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/tencent/wxop/stat/event/d;-><init>(Landroid/content/Context;IILjava/lang/Throwable;Ljava/lang/Thread;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v9, v10, v1}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/event/e;Lcom/tencent/wxop/stat/h;ZZ)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "MTA has caught the following uncaught exception:"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->debug(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "Call the original uncaught exception handler."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/wxop/stat/ao;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->g()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
