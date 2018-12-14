.class public Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "SetGenderActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ax$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/SetGenderPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ax$b;"
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String;


# instance fields
.field cbGenderFemale:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0069
    .end annotation
.end field

.field cbGenderMale:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c006a
    .end annotation
.end field

.field etNameFemale:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00c4
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvGenderMale:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03df
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    sget p1, Lcom/mh/movie/core/R$layout;->activity_set_gender:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Lcom/mh/movie/core/a/a/bh;->a()Lcom/mh/movie/core/a/a/bh$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bh$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bh$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ec;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ec;-><init>(Lcom/mh/movie/core/mvp/a/ax$b;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bh$a;->a(Lcom/mh/movie/core/a/b/ec;)Lcom/mh/movie/core/a/a/bh$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bh$a;->a()Lcom/mh/movie/core/a/a/df;

    move-result-object p1

    .line 56
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/df;->a(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 67
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->e()V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 124
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setGender(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, ""

    const-string v2, "updateUserInfo"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 128
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->d:Z

    .line 129
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->finish()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 103
    sput-object v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->c:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderMale:Landroid/widget/CheckBox;

    const-string v2, "A"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderFemale:Landroid/widget/CheckBox;

    const-string v2, "B"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c01d7,
            0x7f0c01d6
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 111
    sget v0, Lcom/mh/movie/core/R$id;->ll_gender_male:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderMale:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderFemale:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string p1, "A"

    .line 114
    sput-object p1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->ll_gender_female:I

    if-ne p1, v0, :cond_1

    .line 116
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderFemale:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->cbGenderMale:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string p1, "B"

    .line 118
    sput-object p1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 93
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
