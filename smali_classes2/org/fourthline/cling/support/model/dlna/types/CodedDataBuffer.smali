.class public Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;
.super Ljava/lang/Object;
.source "CodedDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;
    }
.end annotation


# instance fields
.field private size:Ljava/lang/Long;

.field private tranfer:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;->size:Ljava/lang/Long;

    .line 34
    iput-object p2, p0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;->tranfer:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    return-void
.end method


# virtual methods
.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getTranfer()Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;->tranfer:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    return-object v0
.end method
