.class public Lcom/shuyu/gsyvideoplayer/utils/Debuger;
.super Ljava/lang/Object;
.source "Debuger.java"


# static fields
.field static DEBUG_TAG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSYVideoPlayer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Toast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static disable()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    return-void
.end method

.method public static enable()V
    .locals 1

    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    return-void
.end method

.method public static getDebugMode()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    return v0
.end method

.method public static printfError(Ljava/lang/String;)V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GSYVideoPlayer"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static printfError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GSYVideoPlayer"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static printfError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static printfLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GSYVideoPlayer"

    .line 38
    invoke-static {v0, p0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printfLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static printfWarning(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GSYVideoPlayer"

    .line 49
    invoke-static {v0, p0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfWarning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printfWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->DEBUG_TAG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
