.class Lcom/mh/movie/core/andserver/CoreService$1;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Lcom/yanzhenjie/andserver/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/andserver/CoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/andserver/CoreService;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/andserver/CoreService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mh/movie/core/andserver/CoreService$1;->a:Lcom/mh/movie/core/andserver/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService$1;->a:Lcom/mh/movie/core/andserver/CoreService;

    invoke-static {v0}, Lcom/mh/movie/core/andserver/CoreService;->a(Lcom/mh/movie/core/andserver/CoreService;)Lcom/yanzhenjie/andserver/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/yanzhenjie/andserver/e;->d()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/mh/movie/core/andserver/CoreService$1;->a:Lcom/mh/movie/core/andserver/CoreService;

    invoke-static {v1, v0}, Lcom/mh/movie/core/andserver/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService$1;->a:Lcom/mh/movie/core/andserver/CoreService;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/andserver/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mh/movie/core/andserver/CoreService$1;->a:Lcom/mh/movie/core/andserver/CoreService;

    invoke-static {v0}, Lcom/mh/movie/core/andserver/b;->a(Landroid/content/Context;)V

    return-void
.end method
