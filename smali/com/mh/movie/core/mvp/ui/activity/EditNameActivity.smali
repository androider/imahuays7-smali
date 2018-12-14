.class public Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "EditNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mh/movie/core/mvp/a/m$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/mh/movie/core/mvp/a/m$b;"
    }
.end annotation


# static fields
.field public static c:I = 0x10


# instance fields
.field etName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00c3
    .end annotation
.end field

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0140
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
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

    .line 60
    sget p1, Lcom/mh/movie/core/R$layout;->activity_edit_name:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-static {}, Lcom/mh/movie/core/a/a/y;->a()Lcom/mh/movie/core/a/a/y$a;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/y$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/y$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ah;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ah;-><init>(Lcom/mh/movie/core/mvp/a/m$b;)V

    .line 53
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/y$a;->a(Lcom/mh/movie/core/a/b/ah;)Lcom/mh/movie/core/a/a/y$a;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/y$a;->a()Lcom/mh/movie/core/a/a/bw;

    move-result-object p1

    .line 55
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/bw;->a(Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;)V

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

    .line 65
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[`~!@#$^&*()=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5\u2026\u2026&*\uff08\uff09\u2014\u2014|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\'\u3002\uff0c\u3001\uff1f]"

    .line 134
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-gt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public c()V
    .locals 3

    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 156
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setNickName(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, ""

    const-string v2, "updateUserInfo"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 160
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->d:Z

    .line 161
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->finish()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u60a8\u5c1a\u672a\u8f93\u5165\u6635\u79f0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 113
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u8be5\u6635\u79f0\u4e0e\u5f53\u524d\u6635\u79f0\u76f8\u540c\uff0c\u8bf7\u786e\u8ba4\u4fee\u6539"

    .line 117
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u6635\u79f0\u4e2d\u4e0d\u80fd\u542b\u7279\u6b8a\u5b57\u7b26"

    .line 121
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->c(Ljava/lang/String;)I

    move-result p1

    sget v0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->c:I

    if-le p1, v0, :cond_3

    const-string p1, "\u8f93\u5165\u7684\u6635\u79f0\u8fc7\u957f\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 125
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 100
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0140
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;->etName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
