.class public Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "SubscribeActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bb$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/SubscribePresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/bb$b;"
    }
.end annotation


# instance fields
.field back:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c003e
    .end annotation
.end field

.field c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->c:Z

    const-string v0, "\u6682\u672a\u5f00\u653e\uff0c\u5c1d\u8bd5\u4e0b\u5176\u4ed6\u5206\u4eab\u65b9\u5f0f\u5427\u3002"

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->d:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string p1, "\u786e\u8ba4"

    .line 176
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    sget p1, Lcom/mh/movie/core/R$layout;->activity_subscribe:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->onBackPressed()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-static {}, Lcom/mh/movie/core/a/a/bl;->a()Lcom/mh/movie/core/a/a/bl$a;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bl$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bl$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/eo;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/eo;-><init>(Lcom/mh/movie/core/mvp/a/bb$b;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bl$a;->a(Lcom/mh/movie/core/a/b/eo;)Lcom/mh/movie/core/a/a/bl$a;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bl$a;->a()Lcom/mh/movie/core/a/a/dj;

    move-result-object p1

    .line 49
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dj;->a(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->back:Landroid/widget/ImageView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/ba;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/ba;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 127
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_weiboweb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_weiboweb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->canOpenURL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_weiboweb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->openURL(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_weibo_addr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->openURL(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 149
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_douyinweb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_douyinweb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->canOpenURL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_douyinweb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->openURL(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_douyin_addr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->openURL(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 161
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_tiebaweb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_tiebaweb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->canOpenURL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_tiebaweb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->openURL(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->r:Landroid/content/Context;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->S:Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;->getTarget_douyin_addr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/OtherAppLinkUtils;->openURL(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0148,
            0x7f0c0149,
            0x7f0c0146,
            0x7f0c0147
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 99
    sget v0, Lcom/mh/movie/core/R$id;->iv_go_weibo:I

    if-ne p1, v0, :cond_1

    .line 100
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->c:Z

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->e()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->iv_go_weixin:I

    if-ne p1, v0, :cond_2

    .line 109
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->iv_go_douyin:I

    if-ne p1, v0, :cond_4

    .line 112
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->c:Z

    if-eqz p1, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->f()V

    goto :goto_0

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_4
    sget v0, Lcom/mh/movie/core/R$id;->iv_go_tieba:I

    if-ne p1, v0, :cond_6

    .line 118
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->c:Z

    if-eqz p1, :cond_5

    .line 119
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->g()V

    goto :goto_0

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SubscribeActivity;->b(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
