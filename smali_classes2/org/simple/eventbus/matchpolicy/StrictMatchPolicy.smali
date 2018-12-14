.class public Lorg/simple/eventbus/matchpolicy/StrictMatchPolicy;
.super Ljava/lang/Object;
.source "StrictMatchPolicy.java"

# interfaces
.implements Lorg/simple/eventbus/matchpolicy/MatchPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findMatchEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/simple/eventbus/EventType;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 40
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
