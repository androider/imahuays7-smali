.class Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$3;
.super Ljava/lang/Object;
.source "DanmakuVideoPlayer.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->c(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onVideoResume()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->dismiss()V

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Ljava/lang/String;)V

    return-void
.end method
