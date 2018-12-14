.class public Lcom/mh/movie/core/mvp/ui/fragment/MyFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MyFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->my_topbar:I

    const-string v1, "field \'myTopbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->myTopbar:Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->tv_login:I

    const-string v1, "field \'tvLogin\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvLogin:Landroid/widget/Button;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->tv_regist:I

    const-string v1, "field \'tvRegist\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvRegist:Landroid/widget/Button;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->ll_wallet:I

    const-string v1, "field \'llWallet\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llWallet:Landroid/widget/LinearLayout;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->ll_invite:I

    const-string v1, "field \'llInvite\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llInvite:Landroid/widget/LinearLayout;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->ll_exchange:I

    const-string v1, "field \'llExchange\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llExchange:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->ll_vip:I

    const-string v1, "field \'llVip\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llVip:Landroid/widget/LinearLayout;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->mt_playrecord:I

    const-string v1, "field \'mtPlayrecord\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mtPlayrecord:Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->mt_offline_cache:I

    const-string v1, "field \'mtOfflineCache\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mtOfflineCache:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->ml_my_collection:I

    const-string v1, "field \'mlMyCollection\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyCollection:Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->ml_my_hot_comnunication:I

    const-string v1, "field \'mlMyHotComnunication\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyHotComnunication:Landroid/widget/LinearLayout;

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->ml_my_consultant:I

    const-string v1, "field \'mlMyConsultant\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyConsultant:Landroid/widget/LinearLayout;

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->ml_my_cast_helper:I

    const-string v1, "field \'mlMyCastHelper\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyCastHelper:Landroid/widget/LinearLayout;

    .line 43
    sget v0, Lcom/mh/movie/core/R$id;->ml_my_feedback:I

    const-string v1, "field \'mlMyFeedback\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyFeedback:Landroid/widget/LinearLayout;

    .line 44
    sget v0, Lcom/mh/movie/core/R$id;->ml_my_wechat:I

    const-string v1, "field \'mlMyWechat\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyWechat:Landroid/widget/LinearLayout;

    .line 45
    sget v0, Lcom/mh/movie/core/R$id;->ll_login_regist:I

    const-string v1, "field \'llLoginRegist\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llLoginRegist:Landroid/widget/LinearLayout;

    .line 46
    sget v0, Lcom/mh/movie/core/R$id;->civ_head_pic:I

    const-string v1, "field \'civHeadPic\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->civHeadPic:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/mh/movie/core/R$id;->tv_name:I

    const-string v1, "field \'tvName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvName:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/mh/movie/core/R$id;->tv_level:I

    const-string v1, "field \'tvLevel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvLevel:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/mh/movie/core/R$id;->ll_login_success:I

    const-string v1, "field \'llLoginSuccess\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llLoginSuccess:Landroid/widget/LinearLayout;

    .line 50
    sget v0, Lcom/mh/movie/core/R$id;->tv_my_money:I

    const-string v1, "field \'tvMyMoney\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvMyMoney:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/mh/movie/core/R$id;->iv_icon_vip:I

    const-string v1, "field \'ivIconVip\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->ivIconVip:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->iv_icon_down:I

    const-string v1, "field \'ivIconDown\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->ivIconDown:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/mh/movie/core/R$id;->iv_icon_searching:I

    const-string v1, "field \'ivIconSearching\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->ivIconSearching:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/mh/movie/core/R$id;->iv_icon_barrage:I

    const-string v1, "field \'ivIconBarrage\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->ivIconBarrage:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/mh/movie/core/R$id;->ll_freedom:I

    const-string v1, "field \'llFreedom\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llFreedom:Landroid/widget/LinearLayout;

    .line 56
    sget v0, Lcom/mh/movie/core/R$id;->hzs_header_zoom_view:I

    const-string v1, "field \'headZoomScrollView\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->headZoomScrollView:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;

    .line 57
    sget v0, Lcom/mh/movie/core/R$id;->iv_header_zoom:I

    const-string v1, "field \'llZoom\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llZoom:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/mh/movie/core/R$id;->linear_layout:I

    const-string v1, "field \'linearLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/mh/movie/core/R$id;->ll_header_drag:I

    const-string v1, "field \'relativeDrag\'"

    const-class v2, Landroid/support/constraint/ConstraintLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->relativeDrag:Landroid/support/constraint/ConstraintLayout;

    .line 60
    sget v0, Lcom/mh/movie/core/R$id;->ll_partner:I

    const-string v1, "field \'llPartner\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llPartner:Landroid/widget/LinearLayout;

    .line 61
    sget v0, Lcom/mh/movie/core/R$id;->tv_partner_title:I

    const-string v1, "field \'tvPartnerTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvPartnerTitle:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/mh/movie/core/R$id;->tv_partner_desc:I

    const-string v1, "field \'tvPartnerDesc\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvPartnerDesc:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/mh/movie/core/R$id;->view_divider:I

    const-string v1, "field \'vDivider\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->vDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    .line 73
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->myTopbar:Lcom/mh/movie/core/mvp/ui/widget/MyTopbar;

    .line 74
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvLogin:Landroid/widget/Button;

    .line 75
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvRegist:Landroid/widget/Button;

    .line 76
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llWallet:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llInvite:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llExchange:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llVip:Landroid/widget/LinearLayout;

    .line 80
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mtPlayrecord:Lcom/mh/movie/core/mvp/ui/widget/MyTItleRecycler;

    .line 81
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mtOfflineCache:Lcom/mh/movie/core/mvp/ui/widget/MyTitleRecyclerDown;

    .line 82
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyCollection:Lcom/mh/movie/core/mvp/ui/widget/MyUnderLineText;

    .line 83
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyHotComnunication:Landroid/widget/LinearLayout;

    .line 84
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyConsultant:Landroid/widget/LinearLayout;

    .line 85
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyCastHelper:Landroid/widget/LinearLayout;

    .line 86
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyFeedback:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->mlMyWechat:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llLoginRegist:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->civHeadPic:Landroid/widget/ImageView;

    .line 90
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvName:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvLevel:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llLoginSuccess:Landroid/widget/LinearLayout;

    .line 93
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvMyMoney:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->ivIconVip:Landroid/widget/ImageView;

    .line 95
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->ivIconDown:Landroid/widget/ImageView;

    .line 96
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->ivIconSearching:Landroid/widget/ImageView;

    .line 97
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->ivIconBarrage:Landroid/widget/ImageView;

    .line 98
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llFreedom:Landroid/widget/LinearLayout;

    .line 99
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->headZoomScrollView:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;

    .line 100
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llZoom:Landroid/widget/ImageView;

    .line 101
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 102
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->relativeDrag:Landroid/support/constraint/ConstraintLayout;

    .line 103
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->llPartner:Landroid/widget/LinearLayout;

    .line 104
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvPartnerTitle:Landroid/widget/TextView;

    .line 105
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->tvPartnerDesc:Landroid/widget/TextView;

    .line 106
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->vDivider:Landroid/view/View;

    return-void
.end method
