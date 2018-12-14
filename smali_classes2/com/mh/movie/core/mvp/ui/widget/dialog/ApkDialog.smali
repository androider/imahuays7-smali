.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;
.super Lcom/flyco/dialog/widget/base/BaseDialog;
.source "ApkDialog.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;,
        Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flyco/dialog/widget/base/BaseDialog<",
        "Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;",
        ">;",
        "Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;"
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;

.field private n:Ljava/lang/String;

.field private o:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/flyco/dialog/widget/base/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->p:Z

    const-string v1, ""

    .line 65
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->q:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->c:Landroid/app/Activity;

    .line 73
    iput-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->o:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    .line 74
    new-instance p1, Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p2}, Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->m:Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->m:Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;->a(Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver$a;)V

    .line 76
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 77
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->setCancelable(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getApkCacheFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;)Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 235
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$6;->a:[I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$drawable;->btn_update_red:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    const-string v2, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$drawable;->btn_update_red:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    const-string v2, "\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u5b58\u50a8\u6743\u9650\u7f3a\u5931\uff0c\u65e0\u6cd5\u7f13\u5b58\u66f4\u65b0\u6587\u4ef6"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u7acb\u5373\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$5;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$5;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 297
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b()V

    return-void
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->j:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->l:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic j(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->o:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    return-object p0
.end method

.method static synthetic k(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->m:Lcom/mh/movie/core/mvp/ui/service/DownloadReceiver;

    return-object p0
.end method

.method static synthetic l(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a()V

    return-void
.end method

.method static synthetic m(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "progress"

    .line 211
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 p2, 0x111

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    sget-object p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->b:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    .line 216
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->k:Landroid/widget/TextView;

    const-string p2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_1
    sget-object p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->d:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    .line 220
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->k:Landroid/widget/TextView;

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "apk"

    .line 221
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->n:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_2
    sget-object p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    .line 225
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->k:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u8fdb\u5ea6"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 173
    sget-object p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$6;->a:[I

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$a;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->a()V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->externalStorage(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;)V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->c:Landroid/app/Activity;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$4;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$b;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, p1, v3

    invoke-static {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/flyco/dialog/widget/base/BaseDialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->r:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onCreateView()Landroid/view/View;
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->update_apk_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_notice_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->e:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_version:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->f:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_mahua_url:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->g:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_des_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->h:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->o:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_update_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_update_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->j:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_down_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->k:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->l:Landroid/widget/ProgressBar;

    const-string v0, ""

    .line 110
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getHTML_URL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->q:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b98\u7f51\u5730\u5740:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->b:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$drawable;->btn_update_blue:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    const-string v2, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->j:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->o:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->o:Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->d:Landroid/view/View;

    return-object v0
.end method

.method public setUiBeforShow()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/c;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/c;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
