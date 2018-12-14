.class final Lcom/tencent/wxop/stat/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/r;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/tencent/wxop/stat/r;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wxop/stat/r;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/wxop/stat/r;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "The Throwable error message of StatService.reportException() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/wxop/stat/event/d;

    iget-object v3, p0, Lcom/tencent/wxop/stat/r;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wxop/stat/r;->b:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/tencent/wxop/stat/r;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-static {v1, v2, v4}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/StatSpecifyReportedInfo;)I

    move-result v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/tencent/wxop/stat/r;->a:Ljava/lang/Throwable;

    iget-object v7, p0, Lcom/tencent/wxop/stat/r;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/wxop/stat/event/d;-><init>(Landroid/content/Context;IILjava/lang/Throwable;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    new-instance v1, Lcom/tencent/wxop/stat/aq;

    invoke-direct {v1, v0}, Lcom/tencent/wxop/stat/aq;-><init>(Lcom/tencent/wxop/stat/event/e;)V

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/aq;->a()V

    return-void
.end method
