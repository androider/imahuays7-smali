.class Lcom/fm/openinstall/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field a:J

.field final synthetic b:Lcom/fm/openinstall/e/b;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/e/b;)V
    .locals 2

    iput-object p1, p0, Lcom/fm/openinstall/e/c;->b:Lcom/fm/openinstall/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fm/openinstall/e/c;->a:J

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object p1, p0, Lcom/fm/openinstall/e/c;->b:Lcom/fm/openinstall/e/b;

    invoke-static {p1}, Lcom/fm/openinstall/e/b;->a(Lcom/fm/openinstall/e/b;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fm/openinstall/e/c;->a:J

    iget-object p1, p0, Lcom/fm/openinstall/e/c;->b:Lcom/fm/openinstall/e/b;

    iget-object p1, p1, Lcom/fm/openinstall/e/b;->b:Lcom/fm/openinstall/e/f;

    invoke-virtual {p1}, Lcom/fm/openinstall/e/f;->c()V

    :cond_0
    iget-object p1, p0, Lcom/fm/openinstall/e/c;->b:Lcom/fm/openinstall/e/b;

    invoke-static {p1}, Lcom/fm/openinstall/e/b;->b(Lcom/fm/openinstall/e/b;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6

    iget-object p1, p0, Lcom/fm/openinstall/e/c;->b:Lcom/fm/openinstall/e/b;

    invoke-static {p1}, Lcom/fm/openinstall/e/b;->c(Lcom/fm/openinstall/e/b;)I

    iget-object p1, p0, Lcom/fm/openinstall/e/c;->b:Lcom/fm/openinstall/e/b;

    invoke-static {p1}, Lcom/fm/openinstall/e/b;->a(Lcom/fm/openinstall/e/b;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fm/openinstall/e/c;->a:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    iget-object p1, p0, Lcom/fm/openinstall/e/c;->b:Lcom/fm/openinstall/e/b;

    iget-object p1, p1, Lcom/fm/openinstall/e/b;->b:Lcom/fm/openinstall/e/f;

    invoke-virtual {p1, v4, v5}, Lcom/fm/openinstall/e/f;->c(J)V

    :cond_0
    return-void
.end method
