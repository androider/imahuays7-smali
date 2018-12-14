.class public Lcom/a/a/c/c;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static a:Ljava/lang/String; = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

.field static final b:Ljava/lang/Object;

.field private static c:Lcom/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/a/a/c/c;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/a/a/c/b;)J
    .locals 5

    if-eqz p0, :cond_0

    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/a/a/c/b;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/a/a/c/b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 27
    invoke-virtual {p0}, Lcom/a/a/c/b;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/a/a/c/b;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 28
    invoke-virtual {p0}, Lcom/a/a/c/b;->b()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/a/a/a/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 31
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 33
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/a/a/c/b;
    .locals 2

    const-class v0, Lcom/a/a/c/c;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/a/a/c/c;->c:Lcom/a/a/c/b;

    if-eqz v1, :cond_0

    .line 81
    sget-object p0, Lcom/a/a/c/c;->c:Lcom/a/a/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 84
    :try_start_1
    invoke-static {p0}, Lcom/a/a/c/c;->b(Landroid/content/Context;)Lcom/a/a/c/b;

    move-result-object p0

    .line 85
    sput-object p0, Lcom/a/a/c/c;->c:Lcom/a/a/c/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 88
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)Lcom/a/a/c/b;
    .locals 6

    if-eqz p0, :cond_2

    .line 48
    new-instance v0, Lcom/a/a/c/b;

    invoke-direct {v0}, Lcom/a/a/c/b;-><init>()V

    .line 49
    sget-object v0, Lcom/a/a/c/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/a/a/c/d;->a(Landroid/content/Context;)Lcom/a/a/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/a/a/a/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\n"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_0
    new-instance v2, Lcom/a/a/c/b;

    invoke-direct {v2}, Lcom/a/a/c/b;-><init>()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 58
    invoke-static {p0}, Lcom/a/a/a/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-static {p0}, Lcom/a/a/a/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-virtual {v2, v5}, Lcom/a/a/c/b;->c(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2, v5}, Lcom/a/a/c/b;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v3, v4}, Lcom/a/a/c/b;->b(J)V

    .line 63
    invoke-virtual {v2, p0}, Lcom/a/a/c/b;->b(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v1}, Lcom/a/a/c/b;->d(Ljava/lang/String;)V

    .line 65
    invoke-static {v2}, Lcom/a/a/c/c;->a(Lcom/a/a/c/b;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/a/a/c/b;->a(J)V

    .line 66
    monitor-exit v0

    return-object v2

    .line 49
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
