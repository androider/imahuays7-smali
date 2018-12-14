.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$9;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->changeUiToPlayingBufferingShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->s(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->n(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/TimerHandler;->execFinish()V

    :cond_0
    return-void
.end method
