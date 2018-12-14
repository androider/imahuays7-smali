.class public Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "QRCodeActivity1.java"

# interfaces
.implements Lcom/mh/movie/core/c/a;
.implements Lcom/mh/movie/core/mvp/a/an$b;
.implements Lcom/sina/weibo/sdk/share/WbShareCallback;
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;,
        Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;",
        ">;",
        "Lcom/mh/movie/core/c/a;",
        "Lcom/mh/movie/core/mvp/a/an$b;",
        "Lcom/sina/weibo/sdk/share/WbShareCallback;",
        "Lcom/tencent/tauth/IUiListener;"
    }
.end annotation


# instance fields
.field public c:Landroid/graphics/Bitmap;

.field public d:Ljava/lang/String;

.field private e:Landroid/content/ClipboardManager;

.field private f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field ivQrcode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04b1
    .end annotation
.end field

.field linearMain:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01b3
    .end annotation
.end field

.field llBottom:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01c2
    .end annotation
.end field

.field llJiePin:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01de
    .end annotation
.end field

.field llNormal:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01f2
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03b5
    .end annotation
.end field

.field tvCode2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03b6
    .end annotation
.end field

.field tvCopy:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03bb
    .end annotation
.end field

.field tvJiePin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03ec
    .end annotation
.end field

.field tvSave:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0450
    .end annotation
.end field

.field tvShare:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0464
    .end annotation
.end field

.field tvWebUrl:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04aa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->m()V

    return-void
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    return-object p0
.end method

.method private l()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCopy:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 138
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/al;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/al;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V

    .line 139
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvSave:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 146
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/am;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/am;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V

    .line 147
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvShare:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 157
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/an;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/an;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V

    .line 158
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    return-void
.end method

.method private m()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u5b58\u50a8\u6743\u9650\u7f3a\u5931\uff0c\u65e0\u6cd5\u4fdd\u5b58\u4e8c\u7ef4\u7801\u56fe\u7247\u5230\u76f8\u518c"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u7acb\u5373\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 417
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    sget p1, Lcom/mh/movie/core/R$layout;->activity_qrcode:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    invoke-static {}, Lcom/mh/movie/core/a/a/ay;->a()Lcom/mh/movie/core/a/a/ay$a;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ay$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/db;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/db;-><init>(Lcom/mh/movie/core/mvp/a/an$b;)V

    .line 100
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/mh/movie/core/a/b/db;)Lcom/mh/movie/core/a/a/ay$a;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ay$a;->a()Lcom/mh/movie/core/a/a/cw;

    move-result-object p1

    .line 102
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cw;->a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llJiePin:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvJiePin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llBottom:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setVisibility(I)V

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ao;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ao;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->r:Landroid/content/Context;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;)V

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->externalStorage(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 4

    .line 422
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getMoney()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->setMoney(I)V

    .line 423
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->r:Landroid/content/Context;

    const-string v1, "\u4fdd\u5b58\u5b98\u7f51\u6210\u529f\uff0c\u83b7\u5f97+%s\u9ebb\u82b1\u5e01\u5956\u52b1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 161
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;)V

    goto :goto_0

    .line 172
    :cond_0
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v0, "invitation"

    .line 173
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v0, "startInvitation"

    .line 174
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 176
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->g()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->dismiss()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 113
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mh/movie/core/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setColorForTopBar(Landroid/app/Activity;I)V

    const-string p1, "clipboard"

    .line 114
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->e:Landroid/content/ClipboardManager;

    .line 117
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCode:Landroid/widget/TextView;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCode2:Landroid/widget/TextView;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->d:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->d:Ljava/lang/String;

    sget v0, Lcom/mh/movie/core/R$mipmap;->icon:I

    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->getBitmapFromResources(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {p1, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->createQRCodeWithLogo(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->ivQrcode:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvWebUrl:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u626b\u63cf\u4e0a\u9762\u4e8c\u7ef4\u7801,\u4e0b\u8f7d\u9ebb\u82b1\u5f71\u89c6\n\u5b98\u7f51\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getHTML_URL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llBottom:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llNormal:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llJiePin:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvJiePin:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 133
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->l()V

    return-void
.end method

.method final synthetic b(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->linearMain:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c:Landroid/graphics/Bitmap;

    .line 208
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llBottom:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llJiePin:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvJiePin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 214
    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method final synthetic b(Ljava/lang/Void;)V
    .locals 1

    .line 149
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v0, "invitation"

    .line 150
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v0, "saveQRCode"

    .line 151
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 153
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 338
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 339
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/Void;)V
    .locals 1

    const-string p1, "text"

    .line 140
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->e:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "\u9080\u8bf7\u7801\u5df2\u590d\u5236"

    .line 142
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 272
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 185
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->encryptToHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getHTML_URL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 192
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->SHARE_URL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e_()V
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setCancelable(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 221
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;)V

    return-void
.end method

.method public g()V
    .locals 5

    const-string v0, "\u5206\u4eab\u7ed9\u4f60\u4e00\u4e2a\u4e0d\u7528\u5f00\u4f1a\u5458\u5c31\u80fd\u770b\u7247\u7684APP"

    const-string v1, "\u5e38\u6709\u670b\u53cb\u95ee\u6211\u54ea\u91cc\u770b\u7684\u70ed\u64ad\u5267,\u8fd9\u4e2aApp\u66f4\u65b0\u5f88\u5feb,\u4e0d\u7528\u4f1a\u5458\u5c31\u80fd\u514d\u8d39\u770b"

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e38\u6709\u670b\u53cb\u95ee\u6211\u54ea\u91cc\u770b\u7684\u70ed\u64ad\u5267\uff0c\u8fd9\u4e2aApp\u66f4\u65b0\u5f88\u5feb\uff0c\u4e0d\u7528\u4f1a\u5458\u5c31\u80fd\u514d\u8d39\u770b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v3

    invoke-virtual {v3, p0, p0, p0, p0}, Lcom/mh/movie/core/c/b;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/mh/movie/core/c/a;Lcom/tencent/tauth/IUiListener;)V

    .line 293
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/c/b;->a(Z)V

    .line 295
    new-instance v3, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-direct {v3}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;-><init>()V

    .line 296
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoInfoId(I)V

    .line 297
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoId(I)V

    .line 298
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoType(I)V

    .line 299
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->e:Landroid/content/ClipboardManager;

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setmClipboardManager(Landroid/content/ClipboardManager;)V

    const-string v4, "web"

    .line 301
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setType(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3, v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setTitle(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v3, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setDescription(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    invoke-virtual {v3, v2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setContent(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setWebPageUrl(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mh/movie/core/c/b;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 326
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    const-string v0, "\u5fae\u4fe1\u5206\u4eab\u6210\u529f"

    .line 327
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 332
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88\u5fae\u4fe1\u5206\u4eab"

    .line 333
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 313
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onActivityResult(IILandroid/content/Intent;)V

    .line 314
    invoke-static {p1, p2, p3, p0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    const/16 v0, 0x2774

    if-ne p1, v0, :cond_1

    const/16 p1, 0x2777

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2778

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2b5f

    if-ne p2, p1, :cond_1

    .line 319
    :cond_0
    invoke-static {p3, p0}, Lcom/tencent/tauth/Tencent;->handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    :cond_1
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 356
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88QQ\u5206\u4eab"

    .line 357
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 344
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/c/b;->e()V

    const-string p1, "QQ\u5206\u4eab\u6210\u529f"

    .line 345
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->cancel()V

    :cond_1
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1

    .line 350
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string p1, "QQ\u5206\u4eab\u5931\u8d25"

    .line 351
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 380
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onNewIntent(Landroid/content/Intent;)V

    .line 381
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-virtual {v0, p1, p0}, Lcom/sina/weibo/sdk/share/WbShareHandler;->doResultIntent(Landroid/content/Intent;Lcom/sina/weibo/sdk/share/WbShareCallback;)V

    :cond_0
    return-void
.end method

.method public onWbShareCancel()V
    .locals 2

    .line 368
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u5fae\u535a\u53d6\u6d88\u5206\u4eab"

    .line 369
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareFail()V
    .locals 2

    .line 374
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u5fae\u535a\u5206\u4eab\u5931\u8d25"

    .line 375
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareSuccess()V
    .locals 1

    .line 362
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    const-string v0, "\u5fae\u535a\u5206\u4eab\u6210\u529f"

    .line 363
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
