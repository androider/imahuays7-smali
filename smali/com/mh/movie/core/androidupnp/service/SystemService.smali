.class public Lcom/mh/movie/core/androidupnp/service/SystemService;
.super Landroid/app/Service;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/androidupnp/service/SystemService$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SystemService"


# instance fields
.field private b:Landroid/os/Binder;

.field private c:Lcom/mh/movie/core/androidupnp/service/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Lcom/mh/movie/core/androidupnp/service/SystemService$a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/androidupnp/service/SystemService$a;-><init>(Lcom/mh/movie/core/androidupnp/service/SystemService;)V

    iput-object v0, p0, Lcom/mh/movie/core/androidupnp/service/SystemService;->b:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/mh/movie/core/androidupnp/service/SystemService;->b:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/SystemService;->c:Lcom/mh/movie/core/androidupnp/service/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/SystemService;->c:Lcom/mh/movie/core/androidupnp/service/a/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/a/a;->run()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/SystemService;->c:Lcom/mh/movie/core/androidupnp/service/a/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/a/a;->end()V

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
