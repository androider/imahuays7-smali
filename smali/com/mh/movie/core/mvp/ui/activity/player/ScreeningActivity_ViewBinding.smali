.class public Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ScreeningActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->rv_air_screen_device_list:I

    const-string v1, "field \'rvAirScreenDeviceList\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->ll_air_screen_feedback:I

    const-string v1, "field \'llAirScreenFeedback\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llAirScreenFeedback:Landroid/widget/LinearLayout;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->ll_screen_device_contains:I

    const-string v1, "field \'llScreenDeviceContains\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llScreenDeviceContains:Landroid/widget/LinearLayout;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->iv_screen_loading:I

    const-string v1, "field \'ivScreenLoading\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->tv_screen_loading:I

    const-string v1, "field \'tvScreenLoading\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenLoading:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->ll_screen_refresh:I

    const-string v1, "field \'llScreenRefresh\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llScreenRefresh:Landroid/widget/LinearLayout;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->refresh_tips:I

    const-string v1, "field \'refreshTips\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->refreshTips:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->iv_screen_refresh:I

    const-string v1, "field \'ivScreenRefresh\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->tv_screen_title:I

    const-string v1, "field \'tvScreenTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenTitle:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->tv_screen_content:I

    const-string v1, "field \'tvScreenContent\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenContent:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llAirScreenFeedback:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llScreenDeviceContains:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    .line 55
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenLoading:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llScreenRefresh:Landroid/widget/LinearLayout;

    .line 57
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->refreshTips:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    .line 59
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenTitle:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenContent:Landroid/widget/TextView;

    return-void
.end method
