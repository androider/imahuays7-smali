.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoNetLoadingView;
.super Landroid/widget/FrameLayout;
.source "VideoNetLoadingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoNetLoadingView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->layout_video_net_loading_view:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoNetLoadingView;->addView(Landroid/view/View;)V

    return-void
.end method
