.class public Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "SplashActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ba$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/SplashPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ba$b;"
    }
.end annotation


# instance fields
.field c:Landroid/widget/ImageView;

.field d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Landroid/view/View$OnClickListener;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/support/v4/view/ViewPager;

.field private m:Landroid/os/CountDownTimer;

.field private n:Landroid/support/v7/app/AlertDialog;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->f:Z

    .line 76
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->g:Z

    .line 77
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->h:Z

    .line 78
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->i:Z

    .line 175
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/av;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/av;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->l()V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m()V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Landroid/os/CountDownTimer;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 163
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 169
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    sget v0, Lcom/mh/movie/core/R$anim;->fade_in:I

    sget v1, Lcom/mh/movie/core/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->overridePendingTransition(II)V

    .line 172
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->finish()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 218
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;[Ljava/lang/String;)V

    return-void
.end method

.method private l()V
    .locals 3

    .line 257
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/c;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/c;->a(Landroid/content/Context;)V

    .line 261
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;-><init>()V

    .line 262
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;->setInvitation(Ljava/lang/String;)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getSystemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;->setModel(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;Z)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 268
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$string;->permission_guide:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/ax;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/ax;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u8bbe\u7f6e"

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/ay;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/ay;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->n:Landroid/support/v7/app/AlertDialog;

    .line 276
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->n:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    sget p1, Lcom/mh/movie/core/R$layout;->activity_splash:I

    return p1
.end method

.method public a(JLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;",
            ">;Z)V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 332
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->g:Z

    .line 333
    iput-boolean p4, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->h:Z

    .line 334
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e()V

    .line 335
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->g()V

    if-eqz p3, :cond_4

    .line 336
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 337
    sget-object p2, Lcom/mh/movie/core/mvp/ui/b;->w:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/jess/arms/c/d;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 339
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->e:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->e:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p1

    .line 350
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    rem-int v0, p2, p1

    goto :goto_2

    .line 340
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/gson/e;

    invoke-direct {p2}, Lcom/google/gson/e;-><init>()V

    .line 341
    sget-object p4, Lcom/mh/movie/core/mvp/ui/b;->q:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p4, p2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 345
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 346
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 352
    :cond_3
    :goto_2
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->w:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 353
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    .line 354
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    .line 355
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    .line 356
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 357
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->c:Landroid/widget/ImageView;

    .line 358
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 359
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->r:Landroid/content/Context;

    const-string p2, "is_first_partner"

    invoke-static {p1, p2}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/mh/movie/core/mvp/ui/b;->c:Z

    .line 362
    :cond_4
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->f()V

    return-void
.end method

.method final synthetic a(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 371
    sget-wide v0, Lcom/mh/movie/core/mvp/ui/b;->D:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->f()V

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->l()V

    .line 376
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 3

    .line 176
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getTargetType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->openWeb(Ljava/lang/String;IZI)V

    :cond_1
    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-static {}, Lcom/mh/movie/core/a/a/bk;->a()Lcom/mh/movie/core/a/a/bk$a;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bk$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bk$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/el;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/el;-><init>(Lcom/mh/movie/core/mvp/a/ba$b;)V

    .line 85
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bk$a;->a(Lcom/mh/movie/core/a/b/el;)Lcom/mh/movie/core/a/a/bk$a;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bk$a;->a()Lcom/mh/movie/core/a/a/di;

    move-result-object p1

    .line 87
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/di;->a(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;)V
    .locals 0

    .line 385
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->h()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->dismiss()V

    return-void
.end method

.method final synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 273
    invoke-static {p0}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 274
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->n:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    sget p1, Lcom/mh/movie/core/R$id;->button_enter:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->k:Landroid/widget/TextView;

    .line 99
    sget p1, Lcom/mh/movie/core/R$id;->features:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->l:Landroid/support/v4/view/ViewPager;

    .line 100
    sget p1, Lcom/mh/movie/core/R$id;->splash_bg:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->c:Landroid/widget/ImageView;

    .line 101
    sget p1, Lcom/mh/movie/core/R$id;->tv_start:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->o:Landroid/widget/TextView;

    .line 102
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->k:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 104
    invoke-virtual {p1, v1, v2, v0}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/aw;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/aw;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    .line 105
    invoke-virtual {p1, v0}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 108
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->w:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jess/arms/c/d;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 109
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 110
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->q:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$1;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    .line 114
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->e:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    .line 119
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/mh/movie/core/R$mipmap;->launch_screen:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    .line 120
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->d:Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;

    .line 121
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/AdsResponse;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->c:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 367
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25\uff01"

    .line 368
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 369
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    const-string v1, "\u786e\u5b9a"

    .line 370
    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/az;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/az;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 378
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method final synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->l()V

    .line 271
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->n:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 293
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 235
    sget v0, Lcom/mh/movie/core/mvp/ui/b;->z:I

    if-gtz v0, :cond_1

    const-string v0, "clipboard"

    .line 236
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 237
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "^##(.*)##$"

    .line 247
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getSubUtilSimple(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public e_()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u9009\u62e9\u52a0\u901f\u901a\u9053,\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->a(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->setCancelable(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->show()V

    return-void
.end method

.method public f()V
    .locals 0

    .line 428
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->g()V

    return-void
.end method

.method public g()V
    .locals 7

    .line 433
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->l:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->o:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->k:Landroid/widget/TextView;

    const-string v1, "5s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;

    const-wide/16 v3, 0x13ec

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;JJ)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    .line 461
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->requestWindowFeature(I)Z

    .line 184
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 185
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 191
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->finish()V

    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->InitializeDoamin(Landroid/content/Context;)V

    .line 203
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getBLOG_URL()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->b(Landroid/content/Context;Ljava/util/List;)V

    .line 206
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->e()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 320
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 321
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 323
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->m:Landroid/os/CountDownTimer;

    .line 325
    :cond_0
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->n:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 305
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onPause()V

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->i:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onResume()V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->i:Z

    .line 313
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->h:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->h()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 212
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onStart()V

    .line 213
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;->k()V

    return-void
.end method
