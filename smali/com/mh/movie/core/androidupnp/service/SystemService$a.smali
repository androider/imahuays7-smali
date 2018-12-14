.class public Lcom/mh/movie/core/androidupnp/service/SystemService$a;
.super Landroid/os/Binder;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/androidupnp/service/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/androidupnp/service/SystemService;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/androidupnp/service/SystemService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/service/SystemService$a;->a:Lcom/mh/movie/core/androidupnp/service/SystemService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
