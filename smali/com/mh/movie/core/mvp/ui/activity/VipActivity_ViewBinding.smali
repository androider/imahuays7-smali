.class public Lcom/mh/movie/core/mvp/ui/activity/VipActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VipActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->vp_vip:I

    const-string v1, "field \'vpVip\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vpVip:Landroid/support/v4/view/ViewPager;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->tl_tab_layout:I

    const-string v1, "field \'tlTabLayout\'"

    const-class v2, Landroid/support/design/widget/TabLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->tlTabLayout:Landroid/support/design/widget/TabLayout;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->vdv_vip:I

    const-string v1, "field \'vipDialog\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->ll_movies:I

    const-string v1, "field \'linearLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->linear_content:I

    const-string v1, "field \'relativeContent\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->relativeContent:Landroid/widget/RelativeLayout;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vpVip:Landroid/support/v4/view/ViewPager;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->tlTabLayout:Landroid/support/design/widget/TabLayout;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->relativeContent:Landroid/widget/RelativeLayout;

    .line 54
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method
