.class public final enum Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/http/NetworkStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CDMA:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum EDGE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum G3:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum G4:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum GPRS:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum WIFI:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field private static final synthetic a:[Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 10
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 11
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string v1, "NO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 12
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string v1, "GPRS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->GPRS:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string v1, "CDMA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->CDMA:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string v1, "EDGE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->EDGE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 13
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string v1, "G3"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G3:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 14
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string v1, "G4"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G4:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 15
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string v1, "WIFI"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->WIFI:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const/16 v0, 0x8

    .line 9
    new-array v0, v0, [Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->GPRS:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->CDMA:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->EDGE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G3:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v7

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G4:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v8

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->WIFI:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v9

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->a:[Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .line 9
    const-class v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-object p0
.end method

.method public static values()[Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .line 9
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->a:[Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-virtual {v0}, [Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method
