.class public Lcom/shuyu/gsyvideoplayer/d;
.super Lcom/shuyu/gsyvideoplayer/c;
.source "GSYVideoManager.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static c:Ljava/lang/String; = "GSYVideoManager"

.field private static w:Lcom/shuyu/gsyvideoplayer/d;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->small_id:I

    sput v0, Lcom/shuyu/gsyvideoplayer/d;->a:I

    .line 28
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->full_id:I

    sput v0, Lcom/shuyu/gsyvideoplayer/d;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/c;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/d;->c()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/shuyu/gsyvideoplayer/d;
    .locals 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/d;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/d;->w:Lcom/shuyu/gsyvideoplayer/d;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/shuyu/gsyvideoplayer/d;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/d;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/d;->w:Lcom/shuyu/gsyvideoplayer/d;

    .line 47
    :cond_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/d;->w:Lcom/shuyu/gsyvideoplayer/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 86
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 87
    sget v1, Lcom/shuyu/gsyvideoplayer/d;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/d;->a()Lcom/shuyu/gsyvideoplayer/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/d;->lastListener()Lcom/shuyu/gsyvideoplayer/c/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()V
    .locals 2

    const-string v0, "TTT"

    const-string v1, "releaseAllVideos()"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/d;->a()Lcom/shuyu/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/d;->a()Lcom/shuyu/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d;->listener()Lcom/shuyu/gsyvideoplayer/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/c/a;->onCompletion()V

    .line 106
    :cond_0
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/d;->a()Lcom/shuyu/gsyvideoplayer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/d;->releaseMediaPlayer()V

    return-void
.end method
