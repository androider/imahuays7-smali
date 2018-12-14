.class Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$3;
.super Lcom/shuyu/gsyvideoplayer/c/b;
.source "DetailPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** onPrepared **** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** onPrepared **** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;Z)Z

    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***** onEnterFullscreen **** "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***** onEnterFullscreen **** "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 125
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/c/b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***** onQuitFullscreen **** "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***** onQuitFullscreen **** "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    return-void
.end method
