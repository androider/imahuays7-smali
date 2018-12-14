.class public final enum Lorg/fourthline/cling/support/model/TransportStatus;
.super Ljava/lang/Enum;
.source "TransportStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/TransportStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/TransportStatus;

.field public static final enum CUSTOM:Lorg/fourthline/cling/support/model/TransportStatus;

.field public static final enum ERROR_OCCURRED:Lorg/fourthline/cling/support/model/TransportStatus;

.field public static final enum OK:Lorg/fourthline/cling/support/model/TransportStatus;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/model/TransportStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->OK:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/model/TransportStatus;

    const-string v1, "ERROR_OCCURRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->ERROR_OCCURRED:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/TransportStatus;

    const-string v1, "CUSTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->CUSTOM:Lorg/fourthline/cling/support/model/TransportStatus;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lorg/fourthline/cling/support/model/TransportStatus;

    sget-object v1, Lorg/fourthline/cling/support/model/TransportStatus;->OK:Lorg/fourthline/cling/support/model/TransportStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/TransportStatus;->ERROR_OCCURRED:Lorg/fourthline/cling/support/model/TransportStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/TransportStatus;->CUSTOM:Lorg/fourthline/cling/support/model/TransportStatus;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->$VALUES:[Lorg/fourthline/cling/support/model/TransportStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/TransportStatus;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportStatus;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/model/TransportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/TransportStatus;

    return-object p0
.end method

.method public static valueOrCustomOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportStatus;
    .locals 1

    .line 44
    :try_start_0
    invoke-static {p0}, Lorg/fourthline/cling/support/model/TransportStatus;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportStatus;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 46
    :catch_0
    sget-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->CUSTOM:Lorg/fourthline/cling/support/model/TransportStatus;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/TransportStatus;->setValue(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportStatus;

    move-result-object p0

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/TransportStatus;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->$VALUES:[Lorg/fourthline/cling/support/model/TransportStatus;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/TransportStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/TransportStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fourthline/cling/support/model/TransportStatus;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportStatus;
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportStatus;->value:Ljava/lang/String;

    return-object p0
.end method
