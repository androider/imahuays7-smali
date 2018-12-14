.class public Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;
.super Lcom/jess/arms/mvp/BasePresenter;
.source "ScreeningPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/mvp/BasePresenter<",
        "Lcom/mh/movie/core/mvp/a/b/c$a;",
        "Lcom/mh/movie/core/mvp/a/b/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static e:Ljava/lang/String; = ""

.field public static f:Ljava/lang/String; = "local_url"


# instance fields
.field g:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/jess/arms/http/imageloader/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/jess/arms/integration/AppManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field o:I

.field p:I

.field q:Landroid/os/CountDownTimer;

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:I

.field t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mh/movie/core/mvp/a/b/c$a;Lcom/mh/movie/core/mvp/a/b/c$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/jess/arms/mvp/BasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    const/4 p2, 0x0

    .line 68
    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->q:Landroid/os/CountDownTimer;

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->r:Ljava/util/List;

    .line 70
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->s:I

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->t:Landroid/os/Handler;

    .line 76
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)V

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/androidupnp/a;->a(Lcom/mh/movie/core/androidupnp/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 163
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->s:I

    const/4 v0, 0x1

    .line 167
    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    .line 168
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->q:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 169
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/c$b;

    const-string v1, "\u6b63\u5728\u8fde\u63a5\u8bbe\u5907..."

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/b/c$b;->c(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/androidupnp/a;->a(I)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->k:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->l:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->m:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playDurtion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->n:I

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "playType"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->o:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    const-string v1, "watch"

    .line 112
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setType(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->l:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 115
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoId(I)V

    const/4 v1, 0x0

    .line 116
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoInfoId(I)V

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->o:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoType(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/jess/arms/mvp/BasePresenter;->b()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->g:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 198
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->j:Lcom/jess/arms/integration/AppManager;

    .line 199
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->i:Lcom/jess/arms/http/imageloader/c;

    .line 200
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->h:Landroid/app/Application;

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->q:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->q:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 122
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->h:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u5f53\u524d\u4f7f\u7528\u624b\u673a\u7f51\u7edc\uff0c\u6682\u65e0\u6cd5\u6295\u5c4f"

    .line 127
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->h:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v1, Lcom/mh/movie/core/mvp/a/b/c$b;

    invoke-interface {v1, v0}, Lcom/mh/movie/core/mvp/a/b/c$b;->b(Ljava/lang/String;)V

    return-void

    .line 133
    :cond_2
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/b/a;->f()V

    .line 134
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/b/a;->b()V

    .line 135
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->f()V

    return-void
.end method

.method public f()V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->q:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->q:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 142
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;JJ)V

    .line 159
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->q:Landroid/os/CountDownTimer;

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x2

    .line 174
    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    .line 175
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/a;->d()V

    return-void
.end method

.method public h()V
    .locals 5

    const/4 v0, 0x3

    .line 179
    iput v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->k:Ljava/lang/String;

    const-string v1, "vedio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/c$b;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/c$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d:Lcom/jess/arms/mvp/c;

    check-cast v1, Lcom/mh/movie/core/mvp/a/b/c$b;

    invoke-interface {v1}, Lcom/mh/movie/core/mvp/a/b/c$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/UrlUtils;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->e:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->m:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/androidupnp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672c\u5730\u6295\u5c4f\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->m:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/androidupnp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
