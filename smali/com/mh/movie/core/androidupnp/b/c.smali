.class public Lcom/mh/movie/core/androidupnp/b/c;
.super Ljava/lang/Object;
.source "ClingDevice.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mh/movie/core/androidupnp/b/h<",
        "Lorg/fourthline/cling/model/meta/Device;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/fourthline/cling/model/meta/Device;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/b/c;->a:Lorg/fourthline/cling/model/meta/Device;

    return-void
.end method


# virtual methods
.method public a()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/b/c;->a:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/mh/movie/core/androidupnp/b/c;->b:Z

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/mh/movie/core/androidupnp/b/c;->a()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method
