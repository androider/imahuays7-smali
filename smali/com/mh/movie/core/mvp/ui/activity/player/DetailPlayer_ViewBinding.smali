.class public Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer_ViewBinding;
.super Ljava/lang/Object;
.source "DetailPlayer_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->post_detail_nested_scroll:I

    const-string v1, "field \'postDetailNestedScroll\'"

    const-class v2, Landroid/support/v4/widget/NestedScrollView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->detail_player:I

    const-string v1, "field \'detailPlayer\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->activity_detail_player:I

    const-string v1, "field \'activityDetailPlayer\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->activityDetailPlayer:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    .line 39
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    .line 40
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->detailPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    .line 41
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->activityDetailPlayer:Landroid/widget/RelativeLayout;

    return-void
.end method
