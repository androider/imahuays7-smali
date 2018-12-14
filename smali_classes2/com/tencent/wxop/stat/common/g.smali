.class public Lcom/tencent/wxop/stat/common/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/tencent/wxop/stat/common/g;


# instance fields
.field private a:I

.field private b:I

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/wxop/stat/common/g;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/tencent/wxop/stat/common/g;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    :try_start_0
    iget-object p1, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/wxop/stat/common/g;->e:Z

    iget-boolean p1, p0, Lcom/tencent/wxop/stat/common/g;->e:Z

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_0

    const-class p1, Landroid/provider/Settings$System;

    const-string v2, "canWrite"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/wxop/stat/common/g;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    iget v0, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    iget v1, p0, Lcom/tencent/wxop/stat/common/g;->a:I

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/g;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/wxop/stat/common/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/wxop/stat/common/g;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/common/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/wxop/stat/common/g;->c:Lcom/tencent/wxop/stat/common/g;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget v0, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    iget v1, p0, Lcom/tencent/wxop/stat/common/g;->a:I

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/common/g;->e:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/common/g;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget p2, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/tencent/wxop/stat/common/g;->b:I

    iget v0, p0, Lcom/tencent/wxop/stat/common/g;->a:I

    if-ge p2, v0, :cond_0

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
