.class public Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;
.super Landroid/os/ResultReceiver;
.source "DownloadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;->a:Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;

    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;->a:Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;->a:Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;->a(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
