.class public final enum Lcom/flurry/sdk/cb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/cb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/cb;

.field public static final enum b:Lcom/flurry/sdk/cb;

.field public static final enum c:Lcom/flurry/sdk/cb;

.field private static final synthetic f:[Lcom/flurry/sdk/cb;


# instance fields
.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/flurry/sdk/cb;

    const-string v1, "DeviceId"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/flurry/sdk/cb;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/cb;->a:Lcom/flurry/sdk/cb;

    .line 6
    new-instance v0, Lcom/flurry/sdk/cb;

    const-string v1, "AndroidAdvertisingId"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/flurry/sdk/cb;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/cb;->b:Lcom/flurry/sdk/cb;

    .line 7
    new-instance v0, Lcom/flurry/sdk/cb;

    const-string v1, "AndroidInstallationId"

    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/flurry/sdk/cb;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/cb;->c:Lcom/flurry/sdk/cb;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lcom/flurry/sdk/cb;

    sget-object v1, Lcom/flurry/sdk/cb;->a:Lcom/flurry/sdk/cb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/cb;->b:Lcom/flurry/sdk/cb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/cb;->c:Lcom/flurry/sdk/cb;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/cb;->f:[Lcom/flurry/sdk/cb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/flurry/sdk/cb;->d:I

    .line 14
    iput-boolean p4, p0, Lcom/flurry/sdk/cb;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/cb;
    .locals 1

    .line 4
    const-class v0, Lcom/flurry/sdk/cb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/cb;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/cb;
    .locals 1

    .line 4
    sget-object v0, Lcom/flurry/sdk/cb;->f:[Lcom/flurry/sdk/cb;

    invoke-virtual {v0}, [Lcom/flurry/sdk/cb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/cb;

    return-object v0
.end method
