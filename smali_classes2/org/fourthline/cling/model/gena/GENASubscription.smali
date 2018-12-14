.class public abstract Lorg/fourthline/cling/model/gena/GENASubscription;
.super Ljava/lang/Object;
.source "GENASubscription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected actualDurationSeconds:I

.field protected currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected currentValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/state/StateVariableValue<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field protected requestedDurationSeconds:I

.field protected service:Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected subscriptionId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x708

    .line 40
    iput v0, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->requestedDurationSeconds:I

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->currentValues:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->service:Lorg/fourthline/cling/model/meta/Service;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/gena/GENASubscription;-><init>(Lorg/fourthline/cling/model/meta/Service;)V

    .line 54
    iput p2, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->requestedDurationSeconds:I

    return-void
.end method


# virtual methods
.method public abstract established()V
.end method

.method public abstract eventReceived()V
.end method

.method public declared-synchronized getActualDurationSeconds()I
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->actualDurationSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/state/StateVariableValue<",
            "TS;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->currentValues:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestedDurationSeconds()I
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget v0, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->requestedDurationSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getService()Lorg/fourthline/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->service:Lorg/fourthline/cling/model/meta/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubscriptionId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->subscriptionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActualSubscriptionDurationSeconds(I)V
    .locals 0

    monitor-enter p0

    .line 78
    :try_start_0
    iput p1, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->actualDurationSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubscriptionId(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 66
    :try_start_0
    iput-object p1, p0, Lorg/fourthline/cling/model/gena/GENASubscription;->subscriptionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(GENASubscription, SID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/gena/GENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SEQUENCE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
