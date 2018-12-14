.class public Lcom/flurry/sdk/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/dg;
.implements Lcom/flurry/sdk/ei$a;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String; = "ew"


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "CaptureUncaughtExceptions"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/ew;->b:Z

    const/4 p1, 0x4

    .line 58
    sget-object p2, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, CrashReportingEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/ew;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 61
    sget-object p2, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/flurry/sdk/ex;->b()V

    .line 49
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    .line 51
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->b(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)Z

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object p1

    const-string v0, "CaptureUncaughtExceptions"

    .line 36
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/ew;->b:Z

    const-string v0, "CaptureUncaughtExceptions"

    .line 37
    invoke-virtual {p1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 38
    sget-object p1, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSettings, CrashReportingEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/ew;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p1, v0}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/flurry/sdk/ex;->a()Lcom/flurry/sdk/ex;

    move-result-object p1

    .line 1052
    iget-object v0, p1, Lcom/flurry/sdk/ex;->b:Ljava/util/Map;

    monitor-enter v0

    .line 1053
    :try_start_0
    iget-object p1, p1, Lcom/flurry/sdk/ex;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 67
    invoke-static {p2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 69
    iget-boolean p1, p0, Lcom/flurry/sdk/ew;->b:Z

    if-eqz p1, :cond_3

    const-string p1, ""

    .line 71
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    array-length v0, v0

    if-lez v0, :cond_1

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, " ("

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_2
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    const-string v1, "uncaught"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 88
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/ee;->a()Lcom/flurry/sdk/ee;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/ee;->c()V

    .line 89
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/bx;->f()V

    return-void
.end method
