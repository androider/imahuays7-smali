.class public Lcom/mh/movie/core/androidupnp/b/a;
.super Ljava/lang/Object;
.source "BaseClingResponse.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mh/movie/core/androidupnp/b/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lorg/fourthline/cling/model/action/ActionInvocation;

.field protected b:Lorg/fourthline/cling/model/message/UpnpResponse;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/b/a;->a:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionInvocation;",
            "TT;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/b/a;->a:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 49
    iput-object p2, p0, Lcom/mh/movie/core/androidupnp/b/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/androidupnp/b/a;->a:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 37
    iput-object p2, p0, Lcom/mh/movie/core/androidupnp/b/a;->b:Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 38
    iput-object p3, p0, Lcom/mh/movie/core/androidupnp/b/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/androidupnp/b/a;->d:Ljava/lang/Object;

    return-object v0
.end method
