.class Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$4;
.super Ljava/lang/Object;
.source "MHVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->a(I)V
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

    .line 639
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->setVisibility(I)V

    return-void
.end method
