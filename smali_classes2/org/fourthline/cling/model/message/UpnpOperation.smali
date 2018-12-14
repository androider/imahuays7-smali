.class public abstract Lorg/fourthline/cling/model/message/UpnpOperation;
.super Ljava/lang/Object;
.source "UpnpOperation.java"


# instance fields
.field private httpMinorVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lorg/fourthline/cling/model/message/UpnpOperation;->httpMinorVersion:I

    return-void
.end method


# virtual methods
.method public getHttpMinorVersion()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/fourthline/cling/model/message/UpnpOperation;->httpMinorVersion:I

    return v0
.end method

.method public setHttpMinorVersion(I)V
    .locals 0

    .line 32
    iput p1, p0, Lorg/fourthline/cling/model/message/UpnpOperation;->httpMinorVersion:I

    return-void
.end method
