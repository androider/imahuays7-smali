.class public Lcom/shuyu/gsyvideoplayer/b;
.super Lcom/shuyu/gsyvideoplayer/c;
.source "GSYVideoADManager.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static c:Ljava/lang/String; = "GSYVideoADManager"

.field private static w:Lcom/shuyu/gsyvideoplayer/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->ad_small_id:I

    sput v0, Lcom/shuyu/gsyvideoplayer/b;->a:I

    .line 25
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->ad_full_id:I

    sput v0, Lcom/shuyu/gsyvideoplayer/b;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/c;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/b;->c()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/shuyu/gsyvideoplayer/b;
    .locals 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/b;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/b;->w:Lcom/shuyu/gsyvideoplayer/b;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/shuyu/gsyvideoplayer/b;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/b;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/b;->w:Lcom/shuyu/gsyvideoplayer/b;

    .line 45
    :cond_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/b;->w:Lcom/shuyu/gsyvideoplayer/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 56
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    sget v1, Lcom/shuyu/gsyvideoplayer/b;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b;->a()Lcom/shuyu/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/b;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b;->a()Lcom/shuyu/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/b;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/c/a;->onCompletion()V

    .line 75
    :cond_0
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/b;->a()Lcom/shuyu/gsyvideoplayer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/b;->releaseMediaPlayer()V

    return-void
.end method
