.class Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;
.super Ljava/lang/Object;
.source "MHVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;Ljava/lang/String;J)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->c:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 949
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->c:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->c:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->b(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Z

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->c:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->c(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->c:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->d(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    .line 950
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->c:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iget-wide v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->setSeekOnStart(J)V

    .line 951
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$5;->c:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->startPlayLogic()V

    return-void
.end method
