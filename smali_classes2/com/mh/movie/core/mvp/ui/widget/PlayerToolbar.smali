.class public Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "PlayerToolbar.java"


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->view_player_video_toolbar:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->addView(Landroid/view/View;)V

    .line 25
    sget p1, Lcom/mh/movie/core/R$id;->rl_player_toolbar:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->a:Landroid/widget/RelativeLayout;

    .line 26
    sget p1, Lcom/mh/movie/core/R$id;->play_topbar_content:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->b:Landroid/widget/TextView;

    return-void
.end method
