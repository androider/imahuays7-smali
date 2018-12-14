.class public Lcom/alibaba/sdk/android/httpdns/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/u$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Landroid/content/SharedPreferences;

.field private static d:I

.field private static e:I

.field private static f:J

.field private static g:Lcom/alibaba/sdk/android/httpdns/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/u$a;->a:Lcom/alibaba/sdk/android/httpdns/u$a;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Lcom/alibaba/sdk/android/httpdns/n;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/alibaba/sdk/android/httpdns/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    const/4 v2, 0x0

    if-eq p0, v1, :cond_3

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->c:Lcom/alibaba/sdk/android/httpdns/n;

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->d:Lcom/alibaba/sdk/android/httpdns/n;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->e:Lcom/alibaba/sdk/android/httpdns/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v2

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    :cond_3
    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/u$a;->a:Lcom/alibaba/sdk/android/httpdns/u$a;

    if-eq v1, v3, :cond_6

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/u$a;->b:Lcom/alibaba/sdk/android/httpdns/u$a;

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_5

    monitor-exit v0

    return-object v2

    :cond_5
    :try_start_2
    sget-object p0, Lcom/alibaba/sdk/android/httpdns/h;->b:[Ljava/lang/String;

    sget v1, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    aget-object p0, p0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_6
    :goto_2
    :try_start_3
    sget-object p0, Lcom/alibaba/sdk/android/httpdns/h;->b:[Ljava/lang/String;

    sget v1, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    aget-object p0, p0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a()V
    .locals 3

    const-class v0, Lcom/alibaba/sdk/android/httpdns/u;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/u;->a(I)V

    sget v1, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    sput v1, Lcom/alibaba/sdk/android/httpdns/u;->e:I

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->a()Lcom/alibaba/sdk/android/httpdns/t;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/t;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(I)V
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/u;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/h;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sput p0, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/u;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activiate_ip_index"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p0, "activiated_ip_index_modified_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 9

    const-class v0, Lcom/alibaba/sdk/android/httpdns/u;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/u;->b:Z

    if-nez v1, :cond_4

    const-class v1, Lcom/alibaba/sdk/android/httpdns/u;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v2, Lcom/alibaba/sdk/android/httpdns/u;->b:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string v3, "httpdns_config_cache"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/u;->c:Landroid/content/SharedPreferences;

    :cond_0
    sget-object p0, Lcom/alibaba/sdk/android/httpdns/u;->c:Landroid/content/SharedPreferences;

    const-string v3, "status"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/u;->a:Z

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/u;->c:Landroid/content/SharedPreferences;

    const-string v3, "activiate_ip_index"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    sget p0, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    sput p0, Lcom/alibaba/sdk/android/httpdns/u;->e:I

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/u;->c:Landroid/content/SharedPreferences;

    const-string v3, "disable_modified_time"

    const-wide/16 v4, 0x0

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/alibaba/sdk/android/httpdns/u;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/alibaba/sdk/android/httpdns/u;->f:J

    const/4 p0, 0x0

    sub-long v7, v3, v5

    const-wide/32 v3, 0x5265c00

    cmp-long p0, v7, v3

    if-ltz p0, :cond_1

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/u;->a(Z)V

    :cond_1
    sget-boolean p0, Lcom/alibaba/sdk/android/httpdns/u;->a:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/u$a;->c:Lcom/alibaba/sdk/android/httpdns/u$a;

    :goto_0
    sput-object p0, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/alibaba/sdk/android/httpdns/u$a;->a:Lcom/alibaba/sdk/android/httpdns/u$a;

    goto :goto_0

    :goto_1
    const/4 p0, 0x1

    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/u;->b:Z

    :cond_3
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class p0, Lcom/alibaba/sdk/android/httpdns/u;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/u$a;->a:Lcom/alibaba/sdk/android/httpdns/u$a;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/h;->b:[Ljava/lang/String;

    sget v1, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/u$a;->c:Lcom/alibaba/sdk/android/httpdns/u$a;

    if-ne v0, v1, :cond_0

    const-string v0, "Disable "

    goto :goto_0

    :cond_0
    const-string v0, "Pre_disable "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mode finished. Enter enable mode."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/u$a;->a:Lcom/alibaba/sdk/android/httpdns/u$a;

    sput-object p1, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/u;->a(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->a()Lcom/alibaba/sdk/android/httpdns/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/t;->b()V

    sget p1, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    sput p1, Lcom/alibaba/sdk/android/httpdns/u;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/httpdns/u;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/u;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    sget-object p2, Lcom/alibaba/sdk/android/httpdns/h;->b:[Ljava/lang/String;

    sget v1, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/u;->c()V

    sget p1, Lcom/alibaba/sdk/android/httpdns/u;->e:I

    sget p2, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->a()Lcom/alibaba/sdk/android/httpdns/t;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/httpdns/t;->a(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/r;->a()Lcom/alibaba/sdk/android/httpdns/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/r;->b()V

    :cond_0
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    sget-object p2, Lcom/alibaba/sdk/android/httpdns/u$a;->a:Lcom/alibaba/sdk/android/httpdns/u$a;

    if-ne p1, p2, :cond_1

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/u$a;->b:Lcom/alibaba/sdk/android/httpdns/u$a;

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    const-string p0, "enter pre_disable mode"

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    sget-object p2, Lcom/alibaba/sdk/android/httpdns/u$a;->b:Lcom/alibaba/sdk/android/httpdns/u$a;

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/u$a;->c:Lcom/alibaba/sdk/android/httpdns/u$a;

    sput-object p1, Lcom/alibaba/sdk/android/httpdns/u;->g:Lcom/alibaba/sdk/android/httpdns/u$a;

    const-string p1, "enter disable mode"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/u;->a(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->a()Lcom/alibaba/sdk/android/httpdns/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/sdk/android/httpdns/t;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a(Z)V
    .locals 4

    const-class v0, Lcom/alibaba/sdk/android/httpdns/u;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/u;->a:Z

    if-eq v1, p0, :cond_0

    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/u;->a:Z

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/u;->c:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/u;->c:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "status"

    sget-boolean v2, Lcom/alibaba/sdk/android/httpdns/u;->a:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "disable_modified_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/Throwable;)Z
    .locals 4

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lcom/alibaba/sdk/android/httpdns/f;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/f;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/f;->getErrorCode()I

    move-result v0

    const/16 v3, 0x193

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/f;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ServiceLevelDeny"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method static declared-synchronized b()V
    .locals 3

    const-class v0, Lcom/alibaba/sdk/android/httpdns/u;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/t;->a()Lcom/alibaba/sdk/android/httpdns/t;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/httpdns/t;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c()V
    .locals 2

    sget v0, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/h;->b:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    goto :goto_1

    :cond_0
    sget v0, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    sget v0, Lcom/alibaba/sdk/android/httpdns/u;->d:I

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/u;->a(I)V

    return-void
.end method
