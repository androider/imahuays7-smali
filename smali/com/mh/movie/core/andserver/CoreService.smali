.class public Lcom/mh/movie/core/andserver/CoreService;
.super Landroid/app/Service;
.source "CoreService.java"


# instance fields
.field private a:Lcom/yanzhenjie/andserver/e;

.field private b:Lcom/yanzhenjie/andserver/e$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    new-instance v0, Lcom/mh/movie/core/andserver/CoreService$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/andserver/CoreService$1;-><init>(Lcom/mh/movie/core/andserver/CoreService;)V

    iput-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->b:Lcom/yanzhenjie/andserver/e$b;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/andserver/CoreService;)Lcom/yanzhenjie/andserver/e;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->d()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->d()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Lcom/mh/movie/core/andserver/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->e()V

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->c()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MahuaDownload/vedio"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/yanzhenjie/andserver/a;->a()Lcom/yanzhenjie/andserver/e$a;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/mh/movie/core/andserver/a/a;->a()Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/yanzhenjie/andserver/e$a;->a(Ljava/net/InetAddress;)Lcom/yanzhenjie/andserver/e$a;

    move-result-object v1

    const/16 v2, 0x1f90

    .line 50
    invoke-interface {v1, v2}, Lcom/yanzhenjie/andserver/e$a;->a(I)Lcom/yanzhenjie/andserver/e$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0xa

    .line 51
    invoke-interface {v1, v3, v2}, Lcom/yanzhenjie/andserver/e$a;->a(ILjava/util/concurrent/TimeUnit;)Lcom/yanzhenjie/andserver/e$a;

    move-result-object v1

    new-instance v2, Lcom/mh/movie/core/andserver/a;

    invoke-direct {v2, v0}, Lcom/mh/movie/core/andserver/a;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-interface {v1, v2}, Lcom/yanzhenjie/andserver/e$a;->a(Lcom/yanzhenjie/andserver/h/b;)Lcom/yanzhenjie/andserver/e$a;

    move-result-object v0

    new-instance v1, Lcom/yanzhenjie/andserver/b/b;

    invoke-direct {v1}, Lcom/yanzhenjie/andserver/b/b;-><init>()V

    .line 54
    invoke-interface {v0, v1}, Lcom/yanzhenjie/andserver/e$a;->a(Lcom/yanzhenjie/andserver/b/a;)Lcom/yanzhenjie/andserver/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/andserver/CoreService;->b:Lcom/yanzhenjie/andserver/e$b;

    .line 55
    invoke-interface {v0, v1}, Lcom/yanzhenjie/andserver/e$a;->a(Lcom/yanzhenjie/andserver/e$b;)Lcom/yanzhenjie/andserver/e$a;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e$a;->a()Lcom/yanzhenjie/andserver/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/andserver/CoreService;->a:Lcom/yanzhenjie/andserver/e;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    invoke-direct {p0}, Lcom/mh/movie/core/andserver/CoreService;->b()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/mh/movie/core/andserver/CoreService;->a()V

    const/4 p1, 0x1

    return p1
.end method
