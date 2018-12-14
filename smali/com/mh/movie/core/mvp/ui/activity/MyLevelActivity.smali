.class public Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "MyLevelActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ai$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ai$b;"
    }
.end annotation


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;",
            ">;"
        }
    .end annotation
.end field

.field civHeadPic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0083
    .end annotation
.end field

.field private d:Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter;

.field nsvScroll:Landroid/support/v4/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c027e
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c029c
    .end annotation
.end field

.field rvLevel:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0307
    .end annotation
.end field

.field svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035b
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvIntro2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03e4
    .end annotation
.end field

.field tvIntro3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03e5
    .end annotation
.end field

.field tvIntro4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03e6
    .end annotation
.end field

.field tvIntro5:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03e7
    .end annotation
.end field

.field tvLevel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03f1
    .end annotation
.end field

.field tvLevelDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03f2
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c040d
    .end annotation
.end field

.field tvNextLevel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c040e
    .end annotation
.end field

.field tvPreLevel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0436
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
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

    .line 101
    sget p1, Lcom/mh/movie/core/R$layout;->activity_my_level:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-static {}, Lcom/mh/movie/core/a/a/at;->a()Lcom/mh/movie/core/a/a/at$a;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/at$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/at$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/cj;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/cj;-><init>(Lcom/mh/movie/core/mvp/a/ai$b;)V

    .line 94
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/at$a;->a(Lcom/mh/movie/core/a/b/cj;)Lcom/mh/movie/core/a/a/at$a;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/at$a;->a()Lcom/mh/movie/core/a/a/cr;

    move-result-object p1

    .line 96
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cr;->a(Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89c2\u770b\u5e7f\u544a\uff1a\u83b7\u5f97"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;->getAdOneScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7ecf\u9a8c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6bcf\u65e5\u767b\u5f55\uff1a\u83b7\u5f97"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;->getLoginDayScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7ecf\u9a8c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro4:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89c2\u770b\u5f71\u7247\uff1a\u83b7\u5f97"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;->getWatchOneScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7ecf\u9a8c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvIntro5:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u4eab\u5f71\u7247\uff1a\u83b7\u5f97"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ScoreValueConfigResponse;->getShareOneScore()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u7ecf\u9a8c"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->e()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;",
            ">;)V"
        }
    .end annotation

    .line 241
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 243
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->getLevel()I

    move-result v1

    if-gtz v1, :cond_0

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->c:Ljava/util/List;

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter;->a(Ljava/util/List;)V

    .line 249
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->e()V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->f()V

    .line 107
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->e()V

    .line 108
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter;

    .line 109
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->r:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->rvLevel:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->rvLevel:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/MyLevelAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->a(Z)V

    .line 122
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->b(Z)V

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->c(Z)V

    .line 125
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->nsvScroll:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 126
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result p1

    if-gez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 216
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 6

    .line 132
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvLevel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevel()I

    move-result v1

    const/16 v2, 0x64

    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvPreLevel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvNextLevel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvLevelDesc:Landroid/widget/TextView;

    const-string v1, "\u5df2\u6ee1\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvPreLevel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LV"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvNextLevel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LV"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevel()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->tvLevelDesc:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8ddd\u79bb\u4e0b\u4e00\u7b49\u7ea7\u8fd8\u5dee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevelScore()I

    move-result v4

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getScore()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u7ecf\u9a8c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->c:Ljava/util/List;

    if-nez v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevelScore()I

    move-result v1

    if-gtz v1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevel()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->getScore()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevel()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->getScore()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 154
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getScore()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ScoreConfigResponse;->getScore()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    .line 193
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->r:Landroid/content/Context;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 195
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 196
    invoke-static {v2}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->r:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->civHeadPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->r:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$mipmap;->header_img:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->civHeadPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 165
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 166
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->a(Z)V

    .line 167
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->b(Z)V

    .line 168
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->c(Z)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 160
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 236
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 173
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 174
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->a(Z)V

    .line 175
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->b(Z)V

    .line 176
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;->c(Z)V

    return-void
.end method
