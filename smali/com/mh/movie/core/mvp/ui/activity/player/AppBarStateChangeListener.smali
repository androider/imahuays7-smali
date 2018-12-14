.class public abstract Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "AppBarStateChangeListener.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->IDLE:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/support/design/widget/AppBarLayout;Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;)V
.end method

.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 1

    .line 20
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->SCROLL:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a(Landroid/support/design/widget/AppBarLayout;Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;)V

    if-nez p2, :cond_1

    .line 23
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_0

    .line 24
    sget-object p2, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a(Landroid/support/design/widget/AppBarLayout;Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;)V

    .line 26
    :cond_0
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 28
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_2

    .line 29
    sget-object p2, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a(Landroid/support/design/widget/AppBarLayout;Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;)V

    .line 31
    :cond_2
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    goto :goto_0

    .line 33
    :cond_3
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->IDLE:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_4

    .line 34
    sget-object p2, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->IDLE:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a(Landroid/support/design/widget/AppBarLayout;Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;)V

    .line 36
    :cond_4
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->IDLE:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;->a:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    :goto_0
    return-void
.end method
