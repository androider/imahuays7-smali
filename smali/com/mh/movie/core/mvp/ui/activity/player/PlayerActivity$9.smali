.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;
.super Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

.field private b:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    .line 1653
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/AppBarLayout;Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;)V
    .locals 3

    .line 1661
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p2, p1, :cond_0

    .line 1663
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->b:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 1664
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    sget-object p2, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->E:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 1665
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->setVisibility(I)V

    .line 1666
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->flPlayerVideo:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1667
    :cond_0
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_1

    .line 1668
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    iput-object v2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->E:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 1679
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->b:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 1681
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->setVisibility(I)V

    .line 1682
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->flPlayerVideo:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1685
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->b:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->COLLAPSED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    if-ne p1, v2, :cond_2

    .line 1687
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->flPlayerVideo:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 1688
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->flPlayerVideo:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1706
    :cond_2
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;->b:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    :goto_0
    return-void
.end method
