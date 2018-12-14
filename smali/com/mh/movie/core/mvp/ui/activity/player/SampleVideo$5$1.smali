.class Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;
.super Ljava/lang/Object;
.source "SampleVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;Ljava/lang/String;J)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 343
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->w(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Z

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->x(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iget-object v4, v4, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v4}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->y(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    .line 344
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    iget-wide v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->setSeekOnStart(J)V

    .line 345
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->startPlayLogic()V

    .line 346
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->z(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    .line 347
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5$1;->c:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->A(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    return-void
.end method
