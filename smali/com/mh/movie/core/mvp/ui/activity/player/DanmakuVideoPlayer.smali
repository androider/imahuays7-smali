.class public Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "DanmakuVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;
    }
.end annotation


# instance fields
.field public a:Lmaster/flame/danmaku/a/f;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/RelativeLayout;

.field d:Landroid/widget/LinearLayout;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/EditText;

.field protected g:Landroid/widget/EditText;

.field protected h:Landroid/widget/RelativeLayout;

.field protected i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

.field protected j:Z

.field private k:Lmaster/flame/danmaku/danmaku/a/a;

.field private l:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private m:J

.field private n:Ljava/io/File;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;

.field private q:Landroid/view/inputmethod/InputMethodManager;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->m:J

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->j:Z

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    .line 85
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->m:J

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->j:Z

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->r:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->q:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method private a(Ljava/io/File;)Ljava/io/InputStream;
    .locals 3

    .line 469
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 470
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 471
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<i>"

    .line 474
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 477
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "</i>"

    .line 479
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 482
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 486
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 484
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/io/InputStream;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 1

    if-nez p1, :cond_0

    .line 562
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$8;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$8;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    return-object p1

    .line 571
    :cond_0
    sget-object v0, Lmaster/flame/danmaku/danmaku/loader/a/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/loader/a/c;->a(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/loader/a;

    move-result-object v0

    .line 574
    :try_start_0
    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/loader/a;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lmaster/flame/danmaku/danmaku/loader/IllegalDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 576
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 578
    :goto_0
    new-instance p1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;-><init>()V

    .line 579
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/loader/a;->a()Lmaster/flame/danmaku/danmaku/a/b;

    move-result-object v0

    .line 580
    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/a/a;->load(Lmaster/flame/danmaku/danmaku/a/b;)Lmaster/flame/danmaku/danmaku/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->cancelDismissControlViewTimer()V

    return-void
.end method

.method private a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;J)V
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mHadPlay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/a/f;->a(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;J)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;J)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->q:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private c(Ljava/util/List;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/a/a;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 588
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$9;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$9;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    return-object p1

    .line 597
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;-><init>(Ljava/util/List;)V

    .line 598
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/mh/movie/core/R$color;->danmu_normal:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->setNormalColor(I)V

    const/4 p1, 0x0

    .line 599
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->load(Lmaster/flame/danmaku/danmaku/a/b;)Lmaster/flame/danmaku/danmaku/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->startDismissControlViewTimer()V

    return-void
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mCurrentState:I

    return p0
.end method

.method private e(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "release Danmaku!"

    .line 609
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object p1

    invoke-interface {p1}, Lmaster/flame/danmaku/a/f;->h()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 206
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$3;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;-><init>(Landroid/content/Context;ZLcom/mh/movie/core/mvp/ui/widget/InputDialog$b;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    .line 224
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/InputDialog$a;)V

    return-void
.end method

.method private h()V
    .locals 8

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v3, Lcom/mh/movie/core/mvp/ui/adapter/player/c;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-direct {v3, v4}, Lcom/mh/movie/core/mvp/ui/adapter/player/c;-><init>(Lmaster/flame/danmaku/a/f;)V

    .line 429
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    iput-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->l:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 430
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->l:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    new-array v5, v1, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    aput v7, v5, v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    invoke-virtual {v4, v6}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    const v5, 0x3f99999a    # 1.2f

    invoke-virtual {v4, v5}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v4

    new-instance v5, Lmaster/flame/danmaku/danmaku/model/android/j;

    invoke-direct {v5}, Lmaster/flame/danmaku/danmaku/model/android/j;-><init>()V

    .line 431
    invoke-virtual {v4, v5, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/android/b;Lmaster/flame/danmaku/danmaku/model/android/b$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v3

    .line 432
    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    .line 433
    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 434
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    invoke-interface {v0, v2}, Lmaster/flame/danmaku/a/f;->setCallback(Lmaster/flame/danmaku/a/c$a;)V

    .line 462
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/a/f;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 320
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onVideoSpeedPlay(F)V

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->l:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-void
.end method

.method final synthetic a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    const-class p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->r:Z

    .line 142
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onVideoPause()V

    .line 147
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->cancelDismissControlViewTimer()V

    .line 148
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a()V

    .line 149
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/i;->a(Landroid/view/View;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->r:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->r:Z

    return-void

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->startDismissControlViewTimer()V

    .line 160
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/i;->b(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->b()V

    .line 163
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onVideoResume()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->startDismissControlViewTimer()V

    if-nez p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 371
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->p:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->p:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;)V"
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->o:Ljava/util/List;

    .line 524
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->b(Ljava/util/List;)Lmaster/flame/danmaku/danmaku/a/a;

    .line 527
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getParser()Lmaster/flame/danmaku/danmaku/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->k:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuContext()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lmaster/flame/danmaku/a/f;->a(Lmaster/flame/danmaku/danmaku/a/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 531
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$7;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/util/List;)Lmaster/flame/danmaku/danmaku/a/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/a/a;"
        }
    .end annotation

    .line 624
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->c(Ljava/util/List;)Lmaster/flame/danmaku/danmaku/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->k:Lmaster/flame/danmaku/danmaku/a/a;

    .line 625
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->k:Lmaster/flame/danmaku/danmaku/a/a;

    return-object p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .line 682
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->l:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(I)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 686
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-nez v1, :cond_1

    goto :goto_0

    .line 690
    :cond_1
    iput-object p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    const/4 p1, 0x5

    .line 691
    iput p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    const/16 p1, 0x8

    .line 692
    iput-byte p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->n:B

    const/4 p1, 0x0

    .line 693
    iput-boolean p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->x:Z

    .line 694
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/f;->getCurrentTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Lmaster/flame/danmaku/danmaku/model/d;->d(J)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 695
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->k:Lmaster/flame/danmaku/danmaku/a/a;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/a/a;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/m;->g()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/d;->k:F

    const/4 p1, -0x1

    .line 696
    iput p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->f:I

    .line 698
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/mh/movie/core/R$color;->danmu_border:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lmaster/flame/danmaku/danmaku/model/d;->l:I

    .line 699
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/a/f;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected changePlayingNotShow()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changePlayingNotShow()V

    .line 259
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->g()V

    :cond_0
    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->f()V

    :cond_0
    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingShow()V

    .line 268
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->g()V

    :cond_0
    return-void
.end method

.method protected clickStartIcon()V
    .locals 2

    .line 337
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->g()V

    .line 343
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->clickStartIcon()V

    return-void
.end method

.method protected d()V
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->j:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->j:Z

    .line 416
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->e()V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 495
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected f()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/i;->b(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getDanmaKuShow()Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->j:Z

    return v0
.end method

.method public getDanmakuContext()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->l:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method public getDanmakuStartSeekPosition()J
    .locals 2

    .line 637
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->m:J

    return-wide v0
.end method

.method public getDanmakuView()Lmaster/flame/danmaku/a/f;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    return-object v0
.end method

.method public getParser()Lmaster/flame/danmaku/danmaku/a/a;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->k:Lmaster/flame/danmaku/danmaku/a/a;

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->n:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->n:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Ljava/io/InputStream;)Lmaster/flame/danmaku/danmaku/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->k:Lmaster/flame/danmaku/danmaku/a/a;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->k:Lmaster/flame/danmaku/danmaku/a/a;

    return-object v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 109
    sget v0, Lcom/mh/movie/core/R$id;->danmaku_view:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/ui/widget/DanmakuView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    .line 110
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_player_danma_send:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->e:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/mh/movie/core/R$id;->et_video_player_danma_input:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    .line 112
    sget v0, Lcom/mh/movie/core/R$id;->et_land_video_player_danma_input:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->g:Landroid/widget/EditText;

    .line 114
    sget v0, Lcom/mh/movie/core/R$id;->rl_player_play_control:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->h:Landroid/widget/RelativeLayout;

    .line 117
    sget v0, Lcom/mh/movie/core/R$id;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->b:Landroid/widget/LinearLayout;

    .line 118
    sget v0, Lcom/mh/movie/core/R$id;->rl_progress:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->c:Landroid/widget/RelativeLayout;

    .line 120
    sget v0, Lcom/mh/movie/core/R$id;->ll_danmu:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->d:Landroid/widget/LinearLayout;

    .line 123
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->h()V

    .line 125
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/a;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 382
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onClick(Landroid/view/View;)V

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 384
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_player_danma_send:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 385
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->et_land_video_player_danma_input:I

    if-ne p1, v0, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 390
    const-class p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->hideAllWidget()V

    return-void

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->cancelDismissControlViewTimer()V

    .line 401
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->g()V

    .line 402
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->b(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    const-string v0, "\u53d1\u4e2a\u5f39\u5e55\u8868\u8fbe\u4f60\u7684\u611f\u60f3\u5427"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->a(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->onVideoPause()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCompletion()V
    .locals 0

    .line 348
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onCompletion()V

    .line 349
    invoke-direct {p0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->e(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    return-void
.end method

.method public onPrepared()V
    .locals 2

    const-string v0, "TTT"

    const-string v1, "onPrepared"

    .line 276
    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onPrepared()V

    return-void
.end method

.method public onSeekComplete()V
    .locals 2

    .line 355
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onSeekComplete()V

    .line 356
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDuration()I

    move-result v1

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 358
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mHadPlay:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v0, v0

    .line 359
    invoke-direct {p0, p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;J)V

    goto :goto_0

    .line 360
    :cond_0
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mHadPlay:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v1

    invoke-interface {v1}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v1

    if-nez v1, :cond_1

    int-to-long v0, v0

    .line 362
    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->setDanmakuStartSeekPosition(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 283
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onVideoPause()V

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->f()V

    :cond_0
    return-void
.end method

.method public onVideoPause(Z)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onVideoPause(Z)V

    .line 293
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/f;->f()V

    :cond_0
    return-void
.end method

.method public onVideoResume()V
    .locals 1

    .line 312
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onVideoResume()V

    .line 313
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->g()V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->e()V

    return-void
.end method

.method public onVideoResume(Z)V
    .locals 5

    .line 301
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onVideoResume(Z)V

    .line 302
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->mCurrentPosition:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/a/f;->a(Ljava/lang/Long;)V

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {p1}, Lmaster/flame/danmaku/a/f;->g()V

    :cond_1
    return-void
.end method

.method protected onVideoSeekTo(I)V
    .locals 3

    .line 328
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onVideoSeekTo(I)V

    .line 329
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a:Lmaster/flame/danmaku/a/f;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/a/f;->a(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 513
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->release()V

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    return-void
.end method

.method public setDanmaKuShow(Z)V
    .locals 0

    .line 645
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->j:Z

    return-void
.end method

.method public setDanmakuStartSeekPosition(J)V
    .locals 0

    .line 641
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->m:J

    return-void
.end method

.method public setOpreteCallBack(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->p:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;

    return-void
.end method
