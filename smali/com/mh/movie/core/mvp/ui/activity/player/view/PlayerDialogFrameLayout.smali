.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PlayerDialogFrameLayout.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

.field private b:Z


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

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->b:Z

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/activity/player/view/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    .line 44
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->addView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$color;->bg_transparent_30:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->b:Z

    return-void
.end method

.method final synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->b()V

    :goto_0
    return p2
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->b:Z

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->removeView(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 60
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->setVisibility(I)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->b:Z

    return v0
.end method

.method public d()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->removeView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->f()V

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->removeView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->g()V

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/e;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/e;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
