.class public Lorg/seamless/swing/DefaultEvent;
.super Ljava/lang/Object;
.source "DefaultEvent.java"

# interfaces
.implements Lorg/seamless/swing/Event;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAY",
        "LOAD:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/seamless/swing/Event;"
    }
.end annotation


# instance fields
.field firedInControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/seamless/swing/Controller;",
            ">;"
        }
    .end annotation
.end field

.field payload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPAY",
            "LOAD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/DefaultEvent;->firedInControllers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPAY",
            "LOAD;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/DefaultEvent;->firedInControllers:Ljava/util/Set;

    .line 35
    iput-object p1, p0, Lorg/seamless/swing/DefaultEvent;->payload:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addFiredInController(Lorg/seamless/swing/Controller;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/seamless/swing/DefaultEvent;->firedInControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public alreadyFired(Lorg/seamless/swing/Controller;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/seamless/swing/DefaultEvent;->firedInControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPAY",
            "LOAD;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/seamless/swing/DefaultEvent;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public setPayload(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPAY",
            "LOAD;",
            ")V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lorg/seamless/swing/DefaultEvent;->payload:Ljava/lang/Object;

    return-void
.end method
