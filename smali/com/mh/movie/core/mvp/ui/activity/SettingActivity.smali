.class public Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "SettingActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/az$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/SettingPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/az$b;"
    }
.end annotation


# static fields
.field public static d:Z = false

.field public static e:Z = false


# instance fields
.field public c:Z

.field private f:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

.field ivSettingHeader:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0189
    .end annotation
.end field

.field llSettingAccount:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0215
    .end annotation
.end field

.field sbAutoClear:Lcom/kyleduo/switchbutton/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0318
    .end annotation
.end field

.field sbJumpHead:Lcom/kyleduo/switchbutton/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0319
    .end annotation
.end field

.field sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c031a
    .end annotation
.end field

.field sbPlayHand:Lcom/kyleduo/switchbutton/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c031b
    .end annotation
.end field

.field sbTvRow:Lcom/kyleduo/switchbutton/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c031c
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvDownNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03cc
    .end annotation
.end field

.field tvFriendInvite:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03dd
    .end annotation
.end field

.field tvGender:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03de
    .end annotation
.end field

.field tvSettingCache:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c045d
    .end annotation
.end field

.field tvSettingGender:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c045e
    .end annotation
.end field

.field tvSettingHeader:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c045f
    .end annotation
.end field

.field tvSettingLoginOut:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0460
    .end annotation
.end field

.field tvSettingName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0461
    .end annotation
.end field

.field tvSettingUpdate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0462
    .end annotation
.end field

.field tvSettingVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0463
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    sget p1, Lcom/mh/movie/core/R$layout;->activity_setting:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    invoke-static {}, Lcom/mh/movie/core/a/a/bj;->a()Lcom/mh/movie/core/a/a/bj$a;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bj$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bj$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/ei;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ei;-><init>(Lcom/mh/movie/core/mvp/a/az$b;)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bj$a;->a(Lcom/mh/movie/core/a/b/ei;)Lcom/mh/movie/core/a/a/bj$a;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bj$a;->a()Lcom/mh/movie/core/a/a/dh;

    move-result-object p1

    .line 114
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dh;->a(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V
    .locals 2

    .line 362
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    .line 364
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingUpdate:Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u66f4\u65b0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingUpdate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;)V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->clearTotalTime(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 343
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->y:Z

    .line 344
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 345
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    const-string v2, ""

    const-string v3, "login_out"

    invoke-virtual {v1, v2, v3}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->getUid()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;J)V

    .line 347
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p()V

    .line 349
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->b(Z)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
    .locals 0

    .line 354
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    .line 355
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "\u9000\u51fa\u6210\u529f"

    .line 356
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->finish()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 138
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->d:Z

    .line 139
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->e:Z

    .line 140
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    .line 142
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->g()V

    .line 143
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbAutoClear:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isAutoClearCache()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 144
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbTvRow:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isContinuousPlay()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 145
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 146
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvDownNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->getDownloadNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbJumpHead:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isSkipHeadAndEnd()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 148
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbPlayHand:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isGestureOperation()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 150
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingUpdate:Landroid/widget/TextView;

    const-string v1, "\u5df2\u662f\u6700\u65b0\u7248\u672c"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingUpdate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$color;->grey_99:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->isInvitation()Z

    move-result p1

    if-nez p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvFriendInvite:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvFriendInvite:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingCache:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->l()V

    .line 164
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getLongCacheSize(Landroid/content/Context;)J

    move-result-wide v0

    .line 165
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2MByte(J)F

    move-result p1

    .line 166
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbAutoClear:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v2}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/32 v2, 0x6400000

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 168
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->clearImageCache(Landroid/content/Context;)Z

    .line 169
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingCache:Landroid/widget/TextView;

    const-string v0, "\u7f13\u5b58\u5927\u5c0f\uff1a0M"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingCache:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f13\u5b58\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingCache:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f13\u5b58\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->f()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 317
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    .line 318
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    const-string v1, "2G/3G/4G\u7f51\u8def\u4e0b\u7f13\u5b58\u89c6\u9891\u53ef\u80fd\u4f1a\u5bfc\u81f4\u8d85\u989d\u6d41\u91cf\uff0c\u786e\u8ba4\u662f\u5426\u5f00\u542f\uff1f"

    .line 319
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    const-string v1, "\u53d6\u6d88"

    .line 320
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    const-string v1, "\u5f00\u542f"

    .line 321
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 322
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 337
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method

.method public e_()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setCancelable(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 370
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    invoke-direct {v0, p0, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V

    .line 371
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->show()V

    return-void
.end method

.method public g()V
    .locals 5

    .line 375
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->h()V

    .line 376
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingName:Landroid/widget/TextView;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingGender:Landroid/widget/TextView;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getGenderWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getGenderWord()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$drawable;->red_point_bg:I

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvGender:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvGender:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 388
    :goto_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingLoginOut:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingLoginOut:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :goto_1
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->isInvitation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvFriendInvite:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvFriendInvite:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public h()V
    .locals 7

    .line 401
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$drawable;->red_point_bg:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$mipmap;->icon_go:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 403
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 404
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    .line 408
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 409
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v4, v3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 410
    invoke-static {v4}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v5, ""

    .line 411
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 412
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->ivSettingHeader:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 413
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    sget v6, Lcom/mh/movie/core/R$mipmap;->header_img:I

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->ivSettingHeader:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 416
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public k()V
    .locals 5

    .line 449
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6b63\u5728\u6e05\u9664\u4e2d..."

    .line 451
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 452
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 453
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 454
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;Landroid/app/ProgressDialog;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 422
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 424
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 124
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onResume()V

    .line 125
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->g()V

    .line 127
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->d:Z

    .line 129
    :cond_0
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->e:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvDownNum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->getDownloadNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->e:Z

    :cond_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0189,
            0x7f0c02f7,
            0x7f0c0461,
            0x7f0c0216,
            0x7f0c0462,
            0x7f0c045d,
            0x7f0c0460,
            0x7f0c03cc,
            0x7f0c03dd,
            0x7f0c0318,
            0x7f0c031c,
            0x7f0c0215,
            0x7f0c0319,
            0x7f0c031b
        }
    .end annotation

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 234
    sget v0, Lcom/mh/movie/core/R$id;->iv_setting_header:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 236
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->rl_setting_header:I

    if-ne p1, v0, :cond_2

    .line 238
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    if-eqz p1, :cond_1

    .line 239
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 242
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 246
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_name:I

    if-ne p1, v0, :cond_4

    .line 248
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    if-eqz p1, :cond_3

    .line 249
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/EditNameActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 252
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 257
    :cond_4
    sget v0, Lcom/mh/movie/core/R$id;->ll_setting_gender:I

    if-ne p1, v0, :cond_6

    .line 259
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    if-eqz p1, :cond_5

    .line 260
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/SetGenderActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 263
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 267
    :cond_6
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_update:I

    if-ne p1, v0, :cond_7

    .line 269
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->f:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    if-eqz p1, :cond_12

    .line 270
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->f()V

    goto/16 :goto_0

    .line 272
    :cond_7
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_cache:I

    if-ne p1, v0, :cond_8

    .line 273
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->k()V

    goto/16 :goto_0

    .line 274
    :cond_8
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_loginout:I

    if-ne p1, v0, :cond_9

    .line 276
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->a(Z)V

    goto/16 :goto_0

    .line 277
    :cond_9
    sget v0, Lcom/mh/movie/core/R$id;->tv_down_num:I

    if-ne p1, v0, :cond_b

    .line 279
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    if-eqz p1, :cond_a

    .line 280
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string p1, "\u6e38\u5ba2\u7528\u6237\u65e0\u7f13\u5b58\u6743\u9650"

    .line 283
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 285
    :cond_b
    sget v0, Lcom/mh/movie/core/R$id;->tv_friend_invite:I

    if-ne p1, v0, :cond_c

    .line 287
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/SetInvitationBindActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 289
    :cond_c
    sget v0, Lcom/mh/movie/core/R$id;->sb_auto_clear:I

    if-ne p1, v0, :cond_d

    .line 291
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbAutoClear:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setAutoClearCache(Z)V

    .line 292
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 293
    :cond_d
    sget v0, Lcom/mh/movie/core/R$id;->sb_tv_row:I

    if-ne p1, v0, :cond_e

    .line 295
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbTvRow:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setContinuousPlay(Z)V

    .line 296
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 297
    :cond_e
    sget v0, Lcom/mh/movie/core/R$id;->ll_setting_account:I

    if-ne p1, v0, :cond_10

    .line 299
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->c:Z

    if-eqz p1, :cond_f

    .line 300
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    :cond_f
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 305
    :cond_10
    sget v0, Lcom/mh/movie/core/R$id;->sb_jump_head:I

    if-ne p1, v0, :cond_11

    .line 307
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbJumpHead:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setSkipHeadAndEnd(Z)V

    .line 308
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 309
    :cond_11
    sget v0, Lcom/mh/movie/core/R$id;->sb_play_hand:I

    if-ne p1, v0, :cond_12

    .line 311
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbPlayHand:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->setGestureOperation(Z)V

    .line 312
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;)V

    :cond_12
    :goto_0
    return-void
.end method
