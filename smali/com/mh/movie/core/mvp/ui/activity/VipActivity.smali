.class public Lcom/mh/movie/core/mvp/ui/activity/VipActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "VipActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bh$b;
.implements Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/VipPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/bh$b;",
        "Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;"
    }
.end annotation


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

.field e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field g:Z

.field linearLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01ee
    .end annotation
.end field

.field relativeContent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01af
    .end annotation
.end field

.field svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035b
    .end annotation
.end field

.field tlTabLayout:Landroid/support/design/widget/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0377
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04ba
    .end annotation
.end field

.field vpVip:Landroid/support/v4/view/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->relativeContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->a(I)V

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->b(I)V

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->e()V

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->setOnVipCallBack(Lcom/mh/movie/core/mvp/ui/widget/VipDialogView$a;)V

    return-void
.end method

.method private f()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    sget p1, Lcom/mh/movie/core/R$layout;->activity_vip:I

    return p1
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->a(Z)V

    .line 192
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->g:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 195
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->a(Z)V

    .line 196
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->g:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->r:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;I)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u5f00\u901aVIP\u7279\u6743"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u901aVIP\u7279\u6743\u9700\u8981"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u9ebb\u82b1\u5e01\uff0c\u786e\u5b9a\u5f00\u901a\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u8d2d\u4e70VIP\u4f53\u9a8c\u5238"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d2d\u4e70VIP\u4f53\u9a8c\u5238\u9700\u8981"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u9ebb\u82b1\u5e01\uff0c\u786e\u5b9a\u8d2d\u4e70\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(I)V

    .line 309
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(I)V

    .line 310
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x7

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 204
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->a(I)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 207
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->finish()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    invoke-static {}, Lcom/mh/movie/core/a/a/br;->a()Lcom/mh/movie/core/a/a/br$a;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/br$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/br$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/fk;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fk;-><init>(Lcom/mh/movie/core/mvp/a/bh$b;)V

    .line 74
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/br$a;->a(Lcom/mh/movie/core/a/b/fk;)Lcom/mh/movie/core/a/a/br$a;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/br$a;->a()Lcom/mh/movie/core/a/a/dp;

    move-result-object p1

    .line 76
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dp;->a(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 1

    .line 233
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;

    .line 234
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->setMyData(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const-string v1, "\u6682\u65f6\u6ca1\u6709VIP\u8d44\u6e90"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 218
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->c:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;

    .line 221
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->c:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;->getColumnId()I

    move-result v3

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;->b(I)Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/TabResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_2
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/a/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->c:Ljava/util/List;

    invoke-direct {p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/adapter/a/a;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 225
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/a/a;->a(Ljava/util/List;)V

    .line 226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vpVip:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 228
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->tlTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vpVip:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 142
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->g:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->vipDialog:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->r:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeCommodityText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->g:Z

    .line 242
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->a(I)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b(I)V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->dismiss()V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->r:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 270
    :pswitch_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v0, "\u5f00\u901aVIP\u7279\u6743\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v0, "\u8d2d\u4e70VIP\u4f53\u9a8c\u5238\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 273
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 87
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f()V

    .line 88
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->e()V

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/bc;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/bc;-><init>(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setCancelable(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 116
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->e()V

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->b(I)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->e()V

    .line 124
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/VipPresenter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/VipPresenter;->b(I)V

    return-void
.end method
