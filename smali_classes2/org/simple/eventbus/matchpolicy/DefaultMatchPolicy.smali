.class public Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;
.super Ljava/lang/Object;
.source "DefaultMatchPolicy.java"

# interfaces
.implements Lorg/simple/eventbus/matchpolicy/MatchPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addInterfaces(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/simple/eventbus/EventType;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    .line 58
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    new-instance v3, Lorg/simple/eventbus/EventType;

    invoke-direct {v3, v2, p3}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-direct {p0, p1, v2, p3}, Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;->addInterfaces(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public findMatchEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;
    .locals 3
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

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p2, :cond_0

    .line 39
    new-instance v1, Lorg/simple/eventbus/EventType;

    iget-object v2, p1, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p1, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;->addInterfaces(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object v0
.end method
