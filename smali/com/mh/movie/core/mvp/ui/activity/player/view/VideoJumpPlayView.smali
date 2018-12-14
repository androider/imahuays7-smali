.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;
.super Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;
.source "VideoJumpPlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;
    }
.end annotation


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->a()V

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_video_jump_play_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->e:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_jump_play_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->f:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_jump_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->g:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_jump_play_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->h:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_blu_ray_watch_minutes:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->i:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_blu_ray_watch_full:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->j:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    mul-int/lit16 p1, p1, 0x3e8

    .line 59
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->k:I

    .line 61
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->e:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->i:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->f:Landroid/widget/TextView;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->k:I

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected getViewForRes()I
    .locals 1

    .line 35
    sget v0, Lcom/mh/movie/core/R$layout;->view_video_jump_play:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 93
    sget v0, Lcom/mh/movie/core/R$id;->tv_blu_ray_watch_full:I

    if-ne p1, v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    instance-of p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;->a()V

    goto :goto_0

    .line 97
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_jump_play_close:I

    if-ne p1, v0, :cond_1

    const/16 p1, 0x8

    .line 98
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_jump_play:I

    if-ne p1, v0, :cond_2

    .line 100
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    instance-of p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;

    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->k:I

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView$a;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTryWatchTime(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bd5\u770b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u5206\u949f\uff0c"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
