.class public Lorg/simple/eventbus/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field public eventType:Lorg/simple/eventbus/EventType;

.field public subscriber:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public targetMethod:Ljava/lang/reflect/Method;

.field public threadMode:Lorg/simple/eventbus/ThreadMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/simple/eventbus/TargetMethod;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    .line 53
    iget-object p1, p2, Lorg/simple/eventbus/TargetMethod;->method:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    .line 54
    iget-object p1, p2, Lorg/simple/eventbus/TargetMethod;->threadMode:Lorg/simple/eventbus/ThreadMode;

    iput-object p1, p0, Lorg/simple/eventbus/Subscription;->threadMode:Lorg/simple/eventbus/ThreadMode;

    .line 55
    iget-object p1, p2, Lorg/simple/eventbus/TargetMethod;->eventType:Lorg/simple/eventbus/EventType;

    iput-object p1, p0, Lorg/simple/eventbus/Subscription;->eventType:Lorg/simple/eventbus/EventType;

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

    .line 73
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 75
    :cond_2
    check-cast p1, Lorg/simple/eventbus/Subscription;

    .line 76
    iget-object v2, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 77
    iget-object v2, p1, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    return v1

    .line 79
    :cond_3
    iget-object v2, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 81
    :cond_4
    iget-object v2, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    .line 82
    iget-object p1, p1, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_6

    return v1

    .line 84
    :cond_5
    iget-object v2, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 62
    iget-object v0, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v2, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/simple/eventbus/Subscription;->targetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
