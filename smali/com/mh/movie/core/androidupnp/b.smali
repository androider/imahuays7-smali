.class public Lcom/mh/movie/core/androidupnp/b;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static b:Lcom/mh/movie/core/androidupnp/b;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/androidupnp/b;
    .locals 1

    .line 31
    sget-object v0, Lcom/mh/movie/core/androidupnp/b;->b:Lcom/mh/movie/core/androidupnp/b;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/mh/movie/core/androidupnp/b;

    invoke-direct {v0}, Lcom/mh/movie/core/androidupnp/b;-><init>()V

    sput-object v0, Lcom/mh/movie/core/androidupnp/b;->b:Lcom/mh/movie/core/androidupnp/b;

    .line 34
    :cond_0
    sget-object v0, Lcom/mh/movie/core/androidupnp/b;->b:Lcom/mh/movie/core/androidupnp/b;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/mh/movie/core/androidupnp/b;->a:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/mh/movie/core/androidupnp/b;->a:Z

    return v0
.end method
