.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;
.super Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;
.source "VideoDanmuGuideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;
    }
.end annotation


# instance fields
.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;


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

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 29
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->a()V

    .line 31
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->v_video_danmu_guide_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->e:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_video_danmu_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->f:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->e:Landroid/view/View;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/view/f;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/f;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/view/g;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/g;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getViewForRes()I
    .locals 1

    .line 24
    sget v0, Lcom/mh/movie/core/R$layout;->view_video_danmu_guide:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 44
    sget v0, Lcom/mh/movie/core/R$id;->v_video_danmu_guide_close:I

    if-ne p1, v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->d()V

    goto :goto_0

    .line 46
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_danmu_guide:I

    if-ne p1, v0, :cond_1

    .line 48
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->g:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->g:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;

    instance-of p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->g:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;->g:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;

    return-void
.end method
