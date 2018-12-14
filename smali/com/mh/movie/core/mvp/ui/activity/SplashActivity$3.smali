.class Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;
.super Landroid/os/CountDownTimer;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;JJ)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8fdb\u5165"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->f:Z

    .line 449
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 452
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    iget-boolean v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->h:Z

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->e(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 440
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 442
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
