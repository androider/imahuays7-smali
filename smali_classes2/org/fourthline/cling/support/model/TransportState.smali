.class public final enum Lorg/fourthline/cling/support/model/TransportState;
.super Ljava/lang/Enum;
.source "TransportState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/TransportState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum CUSTOM:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum PAUSED_RECORDING:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum PLAYING:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum RECORDING:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum STOPPED:Lorg/fourthline/cling/support/model/TransportState;

.field public static final enum TRANSITIONING:Lorg/fourthline/cling/support/model/TransportState;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->STOPPED:Lorg/fourthline/cling/support/model/TransportState;

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "PLAYING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->PLAYING:Lorg/fourthline/cling/support/model/TransportState;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "TRANSITIONING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->TRANSITIONING:Lorg/fourthline/cling/support/model/TransportState;

    .line 26
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "PAUSED_PLAYBACK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "PAUSED_RECORDING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_RECORDING:Lorg/fourthline/cling/support/model/TransportState;

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "RECORDING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->RECORDING:Lorg/fourthline/cling/support/model/TransportState;

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "NO_MEDIA_PRESENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/model/TransportState;

    const-string v1, "CUSTOM"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/fourthline/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->CUSTOM:Lorg/fourthline/cling/support/model/TransportState;

    const/16 v0, 0x8

    .line 21
    new-array v0, v0, [Lorg/fourthline/cling/support/model/TransportState;

    sget-object v1, Lorg/fourthline/cling/support/model/TransportState;->STOPPED:Lorg/fourthline/cling/support/model/TransportState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/TransportState;->PLAYING:Lorg/fourthline/cling/support/model/TransportState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/TransportState;->TRANSITIONING:Lorg/fourthline/cling/support/model/TransportState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_RECORDING:Lorg/fourthline/cling/support/model/TransportState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/TransportState;->RECORDING:Lorg/fourthline/cling/support/model/TransportState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/model/TransportState;->CUSTOM:Lorg/fourthline/cling/support/model/TransportState;

    aput-object v1, v0, v9

    sput-object v0, Lorg/fourthline/cling/support/model/TransportState;->$VALUES:[Lorg/fourthline/cling/support/model/TransportState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/TransportState;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/model/TransportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/TransportState;

    return-object p0
.end method

.method public static valueOrCustomOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;
    .locals 1

    .line 49
    :try_start_0
    invoke-static {p0}, Lorg/fourthline/cling/support/model/TransportState;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->CUSTOM:Lorg/fourthline/cling/support/model/TransportState;

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/support/model/TransportState;->setValue(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;

    move-result-object p0

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/TransportState;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->$VALUES:[Lorg/fourthline/cling/support/model/TransportState;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/TransportState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/TransportState;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/fourthline/cling/support/model/TransportState;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportState;->value:Ljava/lang/String;

    return-object p0
.end method
