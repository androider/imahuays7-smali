.class Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;
.super Ljava/lang/Object;
.source "SampleVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/render/a;->b()F

    move-result p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x43870000    # 270.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a(F)V

    .line 120
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->j(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/render/a;->a()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->l(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->k(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->b()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a(F)V

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->m(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/render/a;->a()V

    :goto_0
    return-void
.end method
