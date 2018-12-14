.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;
.super Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;
.source "VideoWatchShareView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;
    }
.end annotation


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;


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

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->a()V

    .line 37
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_video_watch_share_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->e:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_watch_film_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->f:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_video_watch_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->g:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_watch_share_video_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->h:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/view/j;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/j;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/view/k;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/k;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getViewForRes()I
    .locals 1

    .line 30
    sget v0, Lcom/mh/movie/core/R$layout;->view_video_watch_share:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_watch_share_close:I

    if-ne p1, v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->d()V

    goto :goto_0

    .line 54
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_watch_share:I

    if-ne p1, v0, :cond_1

    .line 56
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->i:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->i:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;

    instance-of p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->i:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->i:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;

    return-void
.end method

.method public setVideoType(Ljava/lang/String;)V
    .locals 3

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWatchFilmCount(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->f:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
