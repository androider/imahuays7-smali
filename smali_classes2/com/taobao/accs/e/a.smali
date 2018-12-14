.class public Lcom/taobao/accs/e/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/e/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/taobao/accs/e/a;


# instance fields
.field private b:Ljava/lang/ClassLoader;

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/taobao/accs/e/a;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/e/a;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/taobao/accs/e/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/taobao/accs/e/a;
    .locals 2

    const-class v0, Lcom/taobao/accs/e/a;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/taobao/accs/e/a;->a:Lcom/taobao/accs/e/a;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/taobao/accs/e/a;

    invoke-direct {v1}, Lcom/taobao/accs/e/a;-><init>()V

    sput-object v1, Lcom/taobao/accs/e/a;->a:Lcom/taobao/accs/e/a;

    .line 30
    :cond_0
    sget-object v1, Lcom/taobao/accs/e/a;->a:Lcom/taobao/accs/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/accs/e/a;->c:Z

    if-eqz v0, :cond_0

    const-string p1, "ACCSClassLoader"

    const-string p2, "dexOpting, exit"

    const/4 v0, 0x0

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 83
    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/accs/e/a;->c:Z

    .line 84
    new-instance v0, Lcom/taobao/accs/e/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/accs/e/b;-><init>(Lcom/taobao/accs/e/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/accs/e/b;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/taobao/accs/e/a;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/taobao/accs/e/a;->c:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 35
    :try_start_0
    iput-object p1, p0, Lcom/taobao/accs/e/a;->d:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "ACCSClassLoader"

    const-string v2, "create new class loader"

    .line 38
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ACCS_SDK"

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "update_folder"

    const/4 v3, 0x0

    .line 41
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACCSClassLoader"

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baseUpdateFolder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    new-instance v2, Ljava/io/File;

    const-string v3, "accs.zip"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "update_verion"

    const/16 v4, 0xdd

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v4, :cond_2

    const-string v3, "update_done"

    .line 49
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACCSClassLoader"

    const-string v3, "dexopt already done"

    .line 50
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lcom/taobao/accs/e/a$a;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string v5, "lib"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-class v4, Lcom/taobao/accs/e/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v2, v3, p1, v4}, Lcom/taobao/accs/e/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_1
    const-string v0, "ACCSClassLoader"

    const-string v3, "try dexopt"

    .line 56
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/taobao/accs/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;

    if-nez p1, :cond_3

    const-string p1, "ACCSClassLoader"

    const-string v0, "get defalut class loader"

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const-class p1, Lcom/taobao/accs/e/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 33
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/ClassLoader;
    .locals 3

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    const-string v0, "ACCSClassLoader"

    const-string v1, "get defalut class loader"

    const/4 v2, 0x0

    .line 72
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-class v0, Lcom/taobao/accs/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/e/a;->b:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 70
    monitor-exit p0

    throw v0
.end method
