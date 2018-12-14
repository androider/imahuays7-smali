.class public Lcom/mh/movie/core/androidupnp/b/b;
.super Ljava/lang/Object;
.source "ClingControlPoint.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mh/movie/core/androidupnp/b/g<",
        "Lorg/fourthline/cling/controlpoint/ControlPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/mh/movie/core/androidupnp/b/b;


# instance fields
.field private b:Lorg/fourthline/cling/controlpoint/ControlPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/androidupnp/b/b;
    .locals 1

    .line 20
    sget-object v0, Lcom/mh/movie/core/androidupnp/b/b;->a:Lcom/mh/movie/core/androidupnp/b/b;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/mh/movie/core/androidupnp/b/b;

    invoke-direct {v0}, Lcom/mh/movie/core/androidupnp/b/b;-><init>()V

    sput-object v0, Lcom/mh/movie/core/androidupnp/b/b;->a:Lcom/mh/movie/core/androidupnp/b/b;

    .line 23
    :cond_0
    sget-object v0, Lcom/mh/movie/core/androidupnp/b/b;->a:Lcom/mh/movie/core/androidupnp/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/b/b;->b:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-void
.end method

.method public b()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/b/b;->b:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/mh/movie/core/androidupnp/b/b;->b()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0
.end method
