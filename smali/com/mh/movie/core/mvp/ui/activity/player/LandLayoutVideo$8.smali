.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->u()V
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

    .line 481
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    const-string v0, "TTT"

    .line 510
    invoke-static {v0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gif curPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lb/a/a$a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLjava/io/File;)V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$8;ZLjava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
