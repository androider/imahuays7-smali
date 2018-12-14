.class public Lcom/mh/movie/core/androidupnp/service/b/a;
.super Ljava/lang/Object;
.source "ClingManager.java"


# static fields
.field public static final a:Lorg/fourthline/cling/model/types/ServiceType;

.field public static final b:Lorg/fourthline/cling/model/types/ServiceType;

.field public static final c:Lorg/fourthline/cling/model/types/DeviceType;

.field private static d:Lcom/mh/movie/core/androidupnp/service/b/a;


# instance fields
.field private e:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

.field private f:Lcom/mh/movie/core/androidupnp/service/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "AVTransport"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->a:Lorg/fourthline/cling/model/types/ServiceType;

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "RenderingControl"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->b:Lorg/fourthline/cling/model/types/ServiceType;

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/types/UDADeviceType;

    const-string v1, "MediaRenderer"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->c:Lorg/fourthline/cling/model/types/DeviceType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/androidupnp/service/b/a;
    .locals 1

    .line 49
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->d:Lcom/mh/movie/core/androidupnp/service/b/a;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/mh/movie/core/androidupnp/service/b/a;

    invoke-direct {v0}, Lcom/mh/movie/core/androidupnp/service/b/a;-><init>()V

    sput-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->d:Lcom/mh/movie/core/androidupnp/service/b/a;

    .line 52
    :cond_0
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->d:Lcom/mh/movie/core/androidupnp/service/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/androidupnp/service/b/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/androidupnp/b/h;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/androidupnp/service/b/c;->a(Lcom/mh/movie/core/androidupnp/b/h;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->e:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    return-void
.end method

.method public a(Lcom/mh/movie/core/androidupnp/service/b/c;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    return-void
.end method

.method public b()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->e:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->e:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->b()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->search()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/androidupnp/service/b/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public c()Lcom/mh/movie/core/androidupnp/b/g;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->e:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/b;->a()Lcom/mh/movie/core/androidupnp/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->e:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    invoke-virtual {v1}, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->b()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/androidupnp/b/b;->a(Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 91
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/b;->a()Lcom/mh/movie/core/androidupnp/b/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->e:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->a()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/mh/movie/core/androidupnp/b/h;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-interface {v0}, Lcom/mh/movie/core/androidupnp/service/b/c;->a()Lcom/mh/movie/core/androidupnp/b/h;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-interface {v0}, Lcom/mh/movie/core/androidupnp/service/b/c;->b()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->e:Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/service/ClingUpnpService;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/service/b/a;->f:Lcom/mh/movie/core/androidupnp/service/b/c;

    invoke-interface {v0}, Lcom/mh/movie/core/androidupnp/service/b/c;->c()V

    return-void
.end method
