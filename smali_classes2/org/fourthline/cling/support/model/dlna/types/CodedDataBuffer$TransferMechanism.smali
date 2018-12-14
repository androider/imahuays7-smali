.class public final enum Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;
.super Ljava/lang/Enum;
.source "CodedDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferMechanism"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

.field public static final enum IMMEDIATELY:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

.field public static final enum OTHER:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

.field public static final enum TIMESTAMP:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    const-string v1, "IMMEDIATELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->IMMEDIATELY:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    const-string v1, "TIMESTAMP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->TIMESTAMP:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    .line 26
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->OTHER:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->IMMEDIATELY:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->TIMESTAMP:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->OTHER:Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;
    .locals 1

    .line 23
    const-class v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;
    .locals 1

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/types/CodedDataBuffer$TransferMechanism;

    return-object v0
.end method
