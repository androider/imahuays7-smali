.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;ZZ)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;->c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;->a:Z

    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;->c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->b()V

    .line 624
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;->a:Z

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;->c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 628
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;->b:Z

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;->c:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->onVideoResume()V

    :cond_1
    return-void
.end method
