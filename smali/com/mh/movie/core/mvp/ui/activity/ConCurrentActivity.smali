.class public Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "ConCurrentActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/l$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/ConCurrentPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/l$b;"
    }
.end annotation


# instance fields
.field private c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

.field rlList:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02e1
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    sget p1, Lcom/mh/movie/core/R$layout;->activity_con_current:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-static {}, Lcom/mh/movie/core/a/a/x;->a()Lcom/mh/movie/core/a/a/x$a;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/x$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/x$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/c/a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/c/a;-><init>(Lcom/mh/movie/core/mvp/a/l$b;)V

    .line 56
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/x$a;->a(Lcom/mh/movie/core/mvp/c/a;)Lcom/mh/movie/core/a/a/x$a;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/x$a;->a()Lcom/mh/movie/core/a/a/l;

    move-result-object p1

    .line 58
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/l;->a(Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;->rlList:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;->rlList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->setNum(I)V

    const-string v2, ""

    .line 76
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->setSubTitle(Ljava/lang/String;)V

    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;-><init>()V

    const/4 v2, 0x2

    .line 80
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->setNum(I)V

    const-string v2, "(VIP3\u5f00\u542f)"

    .line 81
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->setSubTitle(Ljava/lang/String;)V

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;-><init>()V

    const/4 v2, 0x3

    .line 85
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->setNum(I)V

    const-string v2, "(VIP7\u5f00\u542f)"

    .line 86
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->setSubTitle(Ljava/lang/String;)V

    .line 87
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a(Ljava/util/List;)V

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->getDownloadNumber()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/ConCurrentAdapter;->a(I)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "downNum"

    .line 123
    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->getDownloadNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 124
    invoke-virtual {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 48
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    sget v0, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initMyTopbar(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method
