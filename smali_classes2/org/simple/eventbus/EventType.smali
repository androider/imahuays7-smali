.class public final Lorg/simple/eventbus/EventType;
.super Ljava/lang/Object;
.source "EventType.java"


# static fields
.field public static final DEFAULT_TAG:Ljava/lang/String; = "default_tag"


# instance fields
.field public event:Ljava/lang/Object;

.field paramClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "default_tag"

    .line 46
    invoke-direct {p0, p1, v0}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default_tag"

    .line 39
    iput-object v0, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    .line 51
    iput-object p2, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 74
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 76
    :cond_2
    check-cast p1, Lorg/simple/eventbus/EventType;

    .line 77
    iget-object v2, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    if-nez v2, :cond_3

    .line 78
    iget-object v2, p1, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    if-eqz v2, :cond_4

    return v1

    .line 80
    :cond_3
    iget-object v2, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    iget-object v3, p1, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 82
    :cond_4
    iget-object v2, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 83
    iget-object p1, p1, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 85
    :cond_5
    iget-object v2, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    iget-object p1, p1, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v2, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventType [paramClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/simple/eventbus/EventType;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
