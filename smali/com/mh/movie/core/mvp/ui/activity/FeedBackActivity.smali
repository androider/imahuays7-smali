.class public Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mh/movie/core/mvp/a/q$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/mh/movie/core/mvp/a/q$b;"
    }
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field etFeedBack:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00bd
    .end annotation
.end field

.field etFeedEmail:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00be
    .end annotation
.end field

.field etFeedQq:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00bf
    .end annotation
.end field

.field recyclerProblem:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02c5
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvSubmit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c046f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    sget p1, Lcom/mh/movie/core/R$layout;->activity_feed_back:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-static {}, Lcom/mh/movie/core/a/a/ac;->a()Lcom/mh/movie/core/a/a/ac$a;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ac$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ac$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/aw;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/aw;-><init>(Lcom/mh/movie/core/mvp/a/q$b;)V

    .line 61
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ac$a;->a(Lcom/mh/movie/core/a/b/aw;)Lcom/mh/movie/core/a/a/ac$a;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ac$a;->a()Lcom/mh/movie/core/a/a/ca;

    move-result-object p1

    .line 63
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/ca;->a(Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;)V

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

    .line 73
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->recyclerProblem:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->r:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->c:Ljava/lang/String;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u65e0\u6cd5\u4e0b\u8f7d"

    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u63a8\u8350\u4e0d\u51c6"

    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u641c\u7d22\u4e0d\u51c6"

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5206\u7c7b\u9519\u8bef"

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u6807\u7b7e\u9519\u8bef"

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u64ad\u653e\u5361\u987f"

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u65e0\u6cd5\u64ad\u653e"

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u65e0\u6cd5\u6295\u5c4f"

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5176        \u5b83"

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->recyclerProblem:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/adapter/e;

    invoke-direct {v1, p1}, Lcom/mh/movie/core/mvp/ui/adapter/e;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "\u63d0\u4ea4\u6210\u529f"

    .line 161
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->finish()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->recyclerProblem:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/adapter/e;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/e;->a()Ljava/util/Map;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 132
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\u8bf7\u9009\u62e9\u4f60\u9047\u5230\u7684\u95ee\u9898"

    .line 136
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedBack:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u53cd\u9988\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    .line 140
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedQq:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "\u5fc5\u987b\u8f93\u5165QQ\u53f7"

    .line 144
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 149
    :cond_3
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedBack:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->setContent(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->setTypeList(Ljava/util/List;)V

    .line 152
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->setTitle(Ljava/lang/String;)V

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device:  System:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getSystemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->setModel(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->setEmail(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->etFeedQq:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->setQq(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/FeedBackPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 120
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;->tvSubmit:Landroid/widget/TextView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/y;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/y;-><init>(Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
