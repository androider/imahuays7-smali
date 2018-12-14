.class Lcom/mh/movie/core/androidupnp/a$1;
.super Ljava/lang/Object;
.source "AndroidupnpMain.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/androidupnp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/androidupnp/a;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/a$1;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 86
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mUpnpServiceConnection onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    check-cast p2, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService$a;

    .line 89
    invoke-virtual {p2}, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService$a;->a()Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    move-result-object p1

    .line 91
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object p2

    .line 92
    invoke-virtual {p2, p1}, Lcom/mh/movie/core/androidupnp/service/b/a;->a(Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;)V

    .line 93
    new-instance p1, Lcom/mh/movie/core/androidupnp/service/b/b;

    invoke-direct {p1}, Lcom/mh/movie/core/androidupnp/service/b/b;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/androidupnp/service/b/a;->a(Lcom/mh/movie/core/androidupnp/service/b/c;)V

    .line 95
    invoke-virtual {p2}, Lcom/mh/movie/core/androidupnp/service/b/a;->d()Lorg/fourthline/cling/registry/Registry;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/a$1;->a:Lcom/mh/movie/core/androidupnp/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/a;->a(Lcom/mh/movie/core/androidupnp/a;)Lcom/mh/movie/core/androidupnp/c/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 97
    invoke-virtual {p2}, Lcom/mh/movie/core/androidupnp/service/b/a;->b()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mUpnpServiceConnection onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lcom/mh/movie/core/androidupnp/service/b/a;->a()Lcom/mh/movie/core/androidupnp/service/b/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/androidupnp/service/b/a;->a(Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;)V

    return-void
.end method
