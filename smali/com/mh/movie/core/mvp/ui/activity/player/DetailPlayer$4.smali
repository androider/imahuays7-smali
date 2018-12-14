.class Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$4;
.super Ljava/lang/Object;
.source "DetailPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 150
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 157
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method
