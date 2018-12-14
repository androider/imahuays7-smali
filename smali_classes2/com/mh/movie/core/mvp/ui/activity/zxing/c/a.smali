.class public Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

.field private final b:Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;

.field private final c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

.field private d:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    .line 47
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;

    invoke-direct {v0, p1, p3}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;-><init>(Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;

    .line 48
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;->start()V

    .line 49
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    .line 52
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    .line 53
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->c()V

    .line 54
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    if-ne v0, v1, :cond_0

    .line 101
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    .line 102
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;->a()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->a(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 82
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->d()V

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;->a()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$id;->quit:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    sget v0, Lcom/mh/movie/core/R$id;->decode_succeeded:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->removeMessages(I)V

    .line 96
    sget v0, Lcom/mh/movie/core/R$id;->decode_failed:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/mh/movie/core/R$id;->restart_preview:I

    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->b()V

    goto :goto_0

    .line 62
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/mh/movie/core/R$id;->decode_succeeded:I

    if-ne v0, v1, :cond_1

    .line 63
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    .line 64
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/g;

    invoke-virtual {v1, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->a(Lcom/google/zxing/g;Landroid/os/Bundle;)V

    goto :goto_0

    .line 68
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/mh/movie/core/R$id;->decode_failed:I

    if-ne v0, v1, :cond_2

    .line 71
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->d:Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a$a;

    .line 72
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->c:Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->b:Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/zxing/b/c;->a()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$id;->decode:I

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/a/c;->a(Landroid/os/Handler;I)V

    goto :goto_0

    .line 74
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/mh/movie/core/R$id;->return_scan_result:I

    if-ne v0, v1, :cond_3

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/zxing/c/a;->a:Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
