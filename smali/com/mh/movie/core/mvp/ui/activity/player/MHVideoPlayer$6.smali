.class Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$6;
.super Ljava/lang/Object;
.source "MHVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->onViewClicked(Landroid/view/View;)V
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

    .line 1040
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1043
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->e(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setSeekOnStart(J)V

    .line 1044
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->startPlayLogic()V

    return-void
.end method
