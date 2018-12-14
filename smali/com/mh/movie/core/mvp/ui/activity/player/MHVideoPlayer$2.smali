.class Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$2;
.super Ljava/lang/Object;
.source "MHVideoPlayer.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method
