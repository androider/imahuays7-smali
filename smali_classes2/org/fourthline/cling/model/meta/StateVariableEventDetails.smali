.class public Lorg/fourthline/cling/model/meta/StateVariableEventDetails;
.super Ljava/lang/Object;
.source "StateVariableEventDetails.java"


# instance fields
.field private final eventMaximumRateMilliseconds:I

.field private final eventMinimumDelta:I

.field private final sendEvents:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, v1, v0, v0}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v0}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->sendEvents:Z

    .line 39
    iput p2, p0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->eventMaximumRateMilliseconds:I

    .line 40
    iput p3, p0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->eventMinimumDelta:I

    return-void
.end method


# virtual methods
.method public getEventMaximumRateMilliseconds()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->eventMaximumRateMilliseconds:I

    return v0
.end method

.method public getEventMinimumDelta()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->eventMinimumDelta:I

    return v0
.end method

.method public isSendEvents()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;->sendEvents:Z

    return v0
.end method
