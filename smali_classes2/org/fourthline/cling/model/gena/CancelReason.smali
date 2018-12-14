.class public final enum Lorg/fourthline/cling/model/gena/CancelReason;
.super Ljava/lang/Enum;
.source "CancelReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/gena/CancelReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/gena/CancelReason;

.field public static final enum DEVICE_WAS_REMOVED:Lorg/fourthline/cling/model/gena/CancelReason;

.field public static final enum EXPIRED:Lorg/fourthline/cling/model/gena/CancelReason;

.field public static final enum RENEWAL_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

.field public static final enum UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lorg/fourthline/cling/model/gena/CancelReason;

    const-string v1, "RENEWAL_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    .line 26
    new-instance v0, Lorg/fourthline/cling/model/gena/CancelReason;

    const-string v1, "DEVICE_WAS_REMOVED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/fourthline/cling/model/gena/CancelReason;

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/gena/CancelReason;

    const-string v1, "UNSUBSCRIBE_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    .line 28
    new-instance v0, Lorg/fourthline/cling/model/gena/CancelReason;

    const-string v1, "EXPIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/fourthline/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/model/gena/CancelReason;->EXPIRED:Lorg/fourthline/cling/model/gena/CancelReason;

    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [Lorg/fourthline/cling/model/gena/CancelReason;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/fourthline/cling/model/gena/CancelReason;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/fourthline/cling/model/gena/CancelReason;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->EXPIRED:Lorg/fourthline/cling/model/gena/CancelReason;

    aput-object v1, v0, v5

    sput-object v0, Lorg/fourthline/cling/model/gena/CancelReason;->$VALUES:[Lorg/fourthline/cling/model/gena/CancelReason;

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

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/CancelReason;
    .locals 1

    .line 23
    const-class v0, Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/gena/CancelReason;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/gena/CancelReason;
    .locals 1

    .line 23
    sget-object v0, Lorg/fourthline/cling/model/gena/CancelReason;->$VALUES:[Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/gena/CancelReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/gena/CancelReason;

    return-object v0
.end method
