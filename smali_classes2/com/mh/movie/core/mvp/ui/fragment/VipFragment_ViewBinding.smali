.class public Lcom/mh/movie/core/mvp/ui/fragment/VipFragment_ViewBinding;
.super Ljava/lang/Object;
.source "VipFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->vp_vip:I

    const-string v1, "field \'vpVip\'"

    const-class v2, Landroid/support/v4/view/ViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->vpVip:Landroid/support/v4/view/ViewPager;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->tl_tab_layout:I

    const-string v1, "field \'tlTabLayout\'"

    const-class v2, Landroid/support/design/widget/TabLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->tlTabLayout:Landroid/support/design/widget/TabLayout;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->vdv_vip:I

    const-string v1, "field \'vipDialog\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->ll_movies:I

    const-string v1, "field \'linearLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->linear_content:I

    const-string v1, "field \'relativeContent\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->relativeContent:Landroid/widget/RelativeLayout;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    .line 43
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->vpVip:Landroid/support/v4/view/ViewPager;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->tlTabLayout:Landroid/support/design/widget/TabLayout;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->relativeContent:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method
