.class public final enum Lio/rx_cache2/Source;
.super Ljava/lang/Enum;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/rx_cache2/Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rx_cache2/Source;

.field public static final enum CLOUD:Lio/rx_cache2/Source;

.field public static final enum MEMORY:Lio/rx_cache2/Source;

.field public static final enum PERSISTENCE:Lio/rx_cache2/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lio/rx_cache2/Source;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/rx_cache2/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rx_cache2/Source;->MEMORY:Lio/rx_cache2/Source;

    new-instance v0, Lio/rx_cache2/Source;

    const-string v1, "PERSISTENCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/rx_cache2/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rx_cache2/Source;->PERSISTENCE:Lio/rx_cache2/Source;

    new-instance v0, Lio/rx_cache2/Source;

    const-string v1, "CLOUD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/rx_cache2/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rx_cache2/Source;->CLOUD:Lio/rx_cache2/Source;

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lio/rx_cache2/Source;

    sget-object v1, Lio/rx_cache2/Source;->MEMORY:Lio/rx_cache2/Source;

    aput-object v1, v0, v2

    sget-object v1, Lio/rx_cache2/Source;->PERSISTENCE:Lio/rx_cache2/Source;

    aput-object v1, v0, v3

    sget-object v1, Lio/rx_cache2/Source;->CLOUD:Lio/rx_cache2/Source;

    aput-object v1, v0, v4

    sput-object v0, Lio/rx_cache2/Source;->$VALUES:[Lio/rx_cache2/Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rx_cache2/Source;
    .locals 1

    .line 22
    const-class v0, Lio/rx_cache2/Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/rx_cache2/Source;

    return-object p0
.end method

.method public static values()[Lio/rx_cache2/Source;
    .locals 1

    .line 22
    sget-object v0, Lio/rx_cache2/Source;->$VALUES:[Lio/rx_cache2/Source;

    invoke-virtual {v0}, [Lio/rx_cache2/Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rx_cache2/Source;

    return-object v0
.end method
