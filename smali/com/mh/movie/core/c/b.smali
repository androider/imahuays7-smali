.class public Lcom/mh/movie/core/c/b;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/c/b$a;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String; = "https://api.weibo.com/oauth2/default.html"

.field private static e:Ljava/lang/String; = ""

.field private static f:Lcom/mh/movie/core/c/b;


# instance fields
.field public a:Lcom/sina/weibo/sdk/share/WbShareHandler;

.field public b:Lcom/mh/movie/core/c/f;

.field public c:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/tencent/tauth/Tencent;

.field private i:Lcom/mh/movie/core/c/c;

.field private j:Lcom/mh/movie/core/c/e;

.field private k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

.field private l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

.field private m:Lcom/mh/movie/core/c/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/mh/movie/core/c/b;->c:Z

    .line 55
    new-instance v0, Lcom/mh/movie/core/c/b$a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/c/b$a;-><init>(Lcom/mh/movie/core/c/b;)V

    iput-object v0, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/c/b;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/mh/movie/core/c/b;
    .locals 1

    .line 49
    sget-object v0, Lcom/mh/movie/core/c/b;->f:Lcom/mh/movie/core/c/b;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/mh/movie/core/c/b;

    invoke-direct {v0}, Lcom/mh/movie/core/c/b;-><init>()V

    sput-object v0, Lcom/mh/movie/core/c/b;->f:Lcom/mh/movie/core/c/b;

    .line 52
    :cond_0
    sget-object v0, Lcom/mh/movie/core/c/b;->f:Lcom/mh/movie/core/c/b;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/c/b$a;->d(I)V

    .line 337
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b$a;->a(I)V

    .line 338
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoInfoId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b$a;->b(I)V

    .line 339
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b$a;->c(I)V

    .line 341
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/ShareEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;-><init>()V

    const-string v1, "invitation"

    .line 342
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setType(Ljava/lang/String;)V

    const-string v1, "clickShare"

    .line 343
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setVideoId(I)V

    .line 345
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoInfoId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setVideoInfoId(I)V

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoType()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setVideoType(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setPosition(I)V

    .line 348
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    const-string p1, "SHARE"

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clickShare  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 63
    iput-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/mh/movie/core/c/e;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    invoke-virtual {v0}, Lcom/mh/movie/core/c/e;->a()Lcom/mh/movie/core/c/e;

    .line 67
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getQqKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getQqKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    .line 71
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getWbKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/mh/movie/core/c/b;->c:Z

    .line 73
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getWbKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mh/movie/core/c/b;->d:Ljava/lang/String;

    sget-object v3, Lcom/mh/movie/core/c/b;->e:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/WbSdk;->install(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/app/Activity;Lcom/mh/movie/core/c/a;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    invoke-virtual {v0, p3}, Lcom/mh/movie/core/c/e;->setListener(Lcom/mh/movie/core/c/a;)V

    .line 91
    iget-object p3, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    if-eqz p3, :cond_0

    .line 92
    new-instance p3, Lcom/mh/movie/core/c/c;

    iget-object v0, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    invoke-direct {p3, v0, p2, p4}, Lcom/mh/movie/core/c/c;-><init>(Lcom/tencent/tauth/Tencent;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    iput-object p3, p0, Lcom/mh/movie/core/c/b;->i:Lcom/mh/movie/core/c/c;

    .line 95
    :cond_0
    iget-boolean p3, p0, Lcom/mh/movie/core/c/b;->c:Z

    if-eqz p3, :cond_1

    .line 96
    new-instance p3, Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-direct {p3, p2}, Lcom/sina/weibo/sdk/share/WbShareHandler;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    .line 97
    iget-object p2, p0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/share/WbShareHandler;->registerApp()Z

    .line 98
    new-instance p2, Lcom/mh/movie/core/c/f;

    iget-object p3, p0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-direct {p2, p3}, Lcom/mh/movie/core/c/f;-><init>(Lcom/sina/weibo/sdk/share/WbShareHandler;)V

    iput-object p2, p0, Lcom/mh/movie/core/c/b;->b:Lcom/mh/movie/core/c/f;

    .line 101
    :cond_1
    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mh/movie/core/c/b;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/app/Activity;ZLcom/mh/movie/core/c/a;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    invoke-virtual {v0, p4}, Lcom/mh/movie/core/c/e;->setListener(Lcom/mh/movie/core/c/a;)V

    .line 176
    new-instance p4, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    invoke-direct {p4, p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;-><init>(Landroid/content/Context;Z)V

    iput-object p4, p0, Lcom/mh/movie/core/c/b;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    .line 178
    iget-object p3, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    if-eqz p3, :cond_0

    .line 179
    new-instance p3, Lcom/mh/movie/core/c/c;

    iget-object p4, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    invoke-direct {p3, p4, p2, p5}, Lcom/mh/movie/core/c/c;-><init>(Lcom/tencent/tauth/Tencent;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    iput-object p3, p0, Lcom/mh/movie/core/c/b;->i:Lcom/mh/movie/core/c/c;

    .line 182
    :cond_0
    iget-boolean p3, p0, Lcom/mh/movie/core/c/b;->c:Z

    if-eqz p3, :cond_1

    .line 183
    new-instance p3, Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-direct {p3, p2}, Lcom/sina/weibo/sdk/share/WbShareHandler;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    .line 184
    iget-object p2, p0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/share/WbShareHandler;->registerApp()Z

    .line 185
    new-instance p2, Lcom/mh/movie/core/c/f;

    iget-object p3, p0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-direct {p2, p3}, Lcom/mh/movie/core/c/f;-><init>(Lcom/sina/weibo/sdk/share/WbShareHandler;)V

    iput-object p2, p0, Lcom/mh/movie/core/c/b;->b:Lcom/mh/movie/core/c/f;

    .line 188
    :cond_1
    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mh/movie/core/c/b;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoType()I

    move-result v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoInfoId()I

    move-result v2

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getVideoId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a(III)V

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    new-instance v1, Lcom/mh/movie/core/c/b$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/c/b$1;-><init>(Lcom/mh/movie/core/c/b;Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/o$a;

    .line 163
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/o;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/o;->b()V

    :cond_0
    return-void
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    new-instance v1, Lcom/mh/movie/core/c/b$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/c/b$2;-><init>(Lcom/mh/movie/core/c/b;Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    .line 244
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;-><init>()V

    const-string v1, "invitation"

    .line 379
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;->setType(Ljava/lang/String;)V

    const-string v1, "failShare"

    .line 380
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/c/b$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;->setVideoId(I)V

    .line 382
    iget-object v1, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/c/b$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;->setVideoInfoId(I)V

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v2}, Lcom/mh/movie/core/c/b$a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;->setVideoType(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/c/b$a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;->setPosition(I)V

    .line 385
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/db/ShareFailEvent;->setCause(Ljava/lang/String;)V

    .line 386
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    const-string p1, "SHARE"

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failShare  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/c/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c()Lcom/mh/movie/core/mvp/ui/widget/dialog/q;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/q;

    return-object v0
.end method

.method public c(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    invoke-virtual {v0}, Lcom/mh/movie/core/c/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u60a8\u5c1a\u672a\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    invoke-virtual {v0}, Lcom/mh/movie/core/c/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u5fae\u4fe1\u7248\u672c\u4e0d\u652f\u6301\u670b\u53cb\u5708\u5206\u4eab"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/c/b;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    .line 266
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    iget-object v1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/c/e;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 354
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v1, "invitation"

    .line 355
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v1, "copyShareUrl"

    .line 356
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 357
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    return-void
.end method

.method public d(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    invoke-virtual {v0}, Lcom/mh/movie/core/c/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u60a8\u5c1a\u672a\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/c/b;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    iget-object v1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/c/e;->b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/ShareEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;-><init>()V

    const-string v1, "invitation"

    .line 364
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setType(Ljava/lang/String;)V

    const-string v1, "completeShare"

    .line 365
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/c/b$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setVideoId(I)V

    .line 367
    iget-object v1, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/c/b$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setVideoInfoId(I)V

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v2}, Lcom/mh/movie/core/c/b$a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setVideoType(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/c/b$a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/ShareEvent;->setPosition(I)V

    .line 370
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    const-string v0, "SHARE"

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeShare  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/c/b;->m:Lcom/mh/movie/core/c/b$a;

    invoke-virtual {v2}, Lcom/mh/movie/core/c/b$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 289
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u529f\u80fd\u6682\u672a\u5f00\u653e"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u60a8\u5c1a\u672a\u5b89\u88c5QQ"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v0, 0x4

    .line 296
    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/c/b;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    .line 297
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->i:Lcom/mh/movie/core/c/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/c/c;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public f(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 306
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u529f\u80fd\u6682\u672a\u5f00\u653e"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->h:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u60a8\u5c1a\u672a\u5b89\u88c5QQ"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v0, 0x5

    .line 313
    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/c/b;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    .line 314
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->i:Lcom/mh/movie/core/c/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/c/c;->b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public g(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 2

    .line 322
    iget-boolean v0, p0, Lcom/mh/movie/core/c/b;->c:Z

    if-nez v0, :cond_0

    .line 323
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u529f\u80fd\u6682\u672a\u5f00\u653e"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->b:Lcom/mh/movie/core/c/f;

    iget-object v1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    iget-object p1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    const-string v0, "\u60a8\u5c1a\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 330
    invoke-virtual {p0, v0, p1}, Lcom/mh/movie/core/c/b;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    .line 331
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->b:Lcom/mh/movie/core/c/f;

    iget-object v1, p0, Lcom/mh/movie/core/c/b;->g:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/c/f;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V

    return-void
.end method

.method public initWxShare(Lcom/mh/movie/core/c/a;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mh/movie/core/c/b;->j:Lcom/mh/movie/core/c/e;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/c/e;->setListener(Lcom/mh/movie/core/c/a;)V

    return-void
.end method
