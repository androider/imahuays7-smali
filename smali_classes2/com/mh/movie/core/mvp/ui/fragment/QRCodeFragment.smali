.class public Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/h;
.source "QRCodeFragment.java"

# interfaces
.implements Lcom/mh/movie/core/c/a;
.implements Lcom/mh/movie/core/mvp/a/an$b;
.implements Lcom/sina/weibo/sdk/share/WbShareCallback;
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;,
        Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/h<",
        "Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;",
        ">;",
        "Lcom/mh/movie/core/c/a;",
        "Lcom/mh/movie/core/mvp/a/an$b;",
        "Lcom/sina/weibo/sdk/share/WbShareCallback;",
        "Lcom/tencent/tauth/IUiListener;"
    }
.end annotation


# instance fields
.field public c:Lcom/mh/movie/core/c/e;

.field public d:Landroid/graphics/Bitmap;

.field public e:Ljava/lang/String;

.field private f:Landroid/content/ClipboardManager;

.field private g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

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

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g()V

    return-void
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvCopy:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 153
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/ae;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/ae;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V

    .line 154
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 160
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvSave:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 161
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/af;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/af;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V

    .line 162
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvShare:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 172
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/ag;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/ag;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V

    .line 173
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    return-void
.end method

.method private g()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u5b58\u50a8\u6743\u9650\u7f3a\u5931\uff0c\u65e0\u6cd5\u4fdd\u5b58\u4e8c\u7ef4\u7801\u56fe\u7247\u5230\u76f8\u518c"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u7acb\u5373\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$4;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 371
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 115
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_qrcode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 445
    invoke-static {p1, p2, p3, p0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    const/16 v0, 0x2774

    if-ne p1, v0, :cond_1

    const/16 p1, 0x2777

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2778

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2b5f

    if-ne p2, p1, :cond_1

    .line 450
    :cond_0
    invoke-static {p3, p0}, Lcom/tencent/tauth/Tencent;->handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 121
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->a()V

    .line 122
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->f:Landroid/content/ClipboardManager;

    .line 125
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvCode:Landroid/widget/TextView;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvCode2:Landroid/widget/TextView;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->e:Ljava/lang/String;

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$mipmap;->icon:I

    invoke-static {v0, v2}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->getBitmapFromResources(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0x80

    invoke-static {p1, v2, v0}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->createQRCodeWithLogo(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->ivQrcode:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvWebUrl:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u626b\u63cf\u4e0a\u9762\u4e8c\u7ef4\u7801,\u4e0b\u8f7d\u9ebb\u82b1\u5f71\u89c6\n\u5b98\u7f51\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getHTML_URL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llBottom:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llNormal:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llJiePin:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvJiePin:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    new-instance p1, Lcom/mh/movie/core/c/e;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mh/movie/core/c/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->c:Lcom/mh/movie/core/c/e;

    .line 140
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->c:Lcom/mh/movie/core/c/e;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/c/e;->setListener(Lcom/mh/movie/core/c/a;)V

    .line 142
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 143
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->f()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-static {}, Lcom/mh/movie/core/a/a/ay;->a()Lcom/mh/movie/core/a/a/ay$a;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ay$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/db;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/db;-><init>(Lcom/mh/movie/core/mvp/a/an$b;)V

    .line 108
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/mh/movie/core/a/b/db;)Lcom/mh/movie/core/a/a/ay$a;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ay$a;->a()Lcom/mh/movie/core/a/a/cw;

    move-result-object p1

    .line 110
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cw;->a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;)V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llJiePin:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvJiePin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llBottom:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setVisibility(I)V

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/ah;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/ah;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;)V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$3;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;)V

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->externalStorage(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 4

    .line 376
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

    .line 377
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

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

    .line 176
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 177
    new-instance p1, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$1;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;)V

    goto :goto_0

    .line 188
    :cond_0
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v0, "invitation"

    .line 189
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v0, "startInvitation"

    .line 190
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 192
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->e()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->i()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->dismiss()V

    return-void
.end method

.method final synthetic b(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->linearMain:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d:Landroid/graphics/Bitmap;

    .line 224
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llBottom:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->llJiePin:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->tvJiePin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method final synthetic b(Ljava/lang/Void;)V
    .locals 1

    .line 164
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v0, "invitation"

    .line 165
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v0, "saveQRCode"

    .line 166
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 168
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 200
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

    .line 201
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->encryptToHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getHTML_URL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 208
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

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 403
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/Void;)V
    .locals 1

    const-string p1, "text"

    .line 155
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->f:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 157
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u9080\u8bf7\u7801\u5df2\u590d\u5236"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 237
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$2;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;)V

    return-void
.end method

.method public e()V
    .locals 6

    const-string v0, "\u5206\u4eab\u7ed9\u4f60\u4e00\u4e2a\u4e0d\u7528\u5f00\u4f1a\u5458\u5c31\u80fd\u770b\u7247\u7684APP"

    const-string v1, "\u5e38\u6709\u670b\u53cb\u95ee\u6211\u54ea\u91cc\u770b\u7684\u70ed\u64ad\u5267,\u8fd9\u4e2aApp\u66f4\u65b0\u5f88\u5feb,\u4e0d\u7528\u4f1a\u5458\u5c31\u80fd\u514d\u8d39\u770b"

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e38\u6709\u670b\u53cb\u95ee\u6211\u54ea\u91cc\u770b\u7684\u70ed\u64ad\u5267\uff0c\u8fd9\u4e2aApp\u66f4\u65b0\u5f88\u5feb\uff0c\u4e0d\u7528\u4f1a\u5458\u5c31\u80fd\u514d\u8d39\u770b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p0, p0}, Lcom/mh/movie/core/c/b;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/mh/movie/core/c/a;Lcom/tencent/tauth/IUiListener;)V

    .line 304
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/c/b;->a(Z)V

    .line 306
    new-instance v3, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-direct {v3}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;-><init>()V

    .line 307
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoInfoId(I)V

    .line 308
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoId(I)V

    .line 309
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoType(I)V

    .line 310
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->f:Landroid/content/ClipboardManager;

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setmClipboardManager(Landroid/content/ClipboardManager;)V

    const-string v4, "web"

    .line 312
    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setType(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v3, v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setTitle(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v3, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setDescription(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3, v2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setContent(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setWebPageUrl(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mh/movie/core/c/b;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public e_()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->i()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setCancelable(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->i()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 390
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    .line 391
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5fae\u4fe1\u5206\u4eab\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 397
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u5fae\u4fe1\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 421
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88QQ\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 409
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/c/b;->e()V

    .line 410
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "QQ\u5206\u4eab\u6210\u529f"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onDestroy()V

    .line 267
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->cancel()V

    :cond_1
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1

    .line 415
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "QQ\u5206\u4eab\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareCancel()V
    .locals 2

    .line 433
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5fae\u535a\u53d6\u6d88\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareFail()V
    .locals 2

    .line 439
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5fae\u535a\u5206\u4eab\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareSuccess()V
    .locals 2

    .line 427
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    .line 428
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5fae\u535a\u5206\u4eab\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
