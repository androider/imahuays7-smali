.class Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$6;
.super Landroid/os/CountDownTimer;
.source "RegistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;JJ)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$6;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$6;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$6;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 475
    div-long/2addr p1, v0

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91cd\u65b0\u83b7\u53d6("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0xa

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$6;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
