.class public abstract Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BasePlayerFrameLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/Context;

.field protected c:Landroid/view/View;

.field protected d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;


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

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->b:Landroid/content/Context;

    .line 23
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->getViewForRes()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->c:Landroid/view/View;

    .line 25
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->addView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->a()V

    .line 28
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->b()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/16 v0, 0x8

    .line 56
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->setVisibility(I)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract getViewForRes()I
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->a:Ljava/lang/Object;

    return-void
.end method

.method public setPlayerDialogCallback(Lcom/mh/movie/core/mvp/ui/activity/player/view/d;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/BasePlayerFrameLayout;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    return-void
.end method
