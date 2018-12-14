.class final enum Lcom/flurry/sdk/bt$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/bt$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/bt$a;

.field public static final enum b:Lcom/flurry/sdk/bt$a;

.field public static final enum c:Lcom/flurry/sdk/bt$a;

.field public static final enum d:Lcom/flurry/sdk/bt$a;

.field public static final enum e:Lcom/flurry/sdk/bt$a;

.field public static final enum f:Lcom/flurry/sdk/bt$a;

.field private static final synthetic g:[Lcom/flurry/sdk/bt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 554
    new-instance v0, Lcom/flurry/sdk/bt$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/bt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/bt$a;->a:Lcom/flurry/sdk/bt$a;

    new-instance v0, Lcom/flurry/sdk/bt$a;

    const-string v1, "ADVERTISING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/bt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/bt$a;->b:Lcom/flurry/sdk/bt$a;

    new-instance v0, Lcom/flurry/sdk/bt$a;

    const-string v1, "DEVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/bt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/bt$a;->c:Lcom/flurry/sdk/bt$a;

    new-instance v0, Lcom/flurry/sdk/bt$a;

    const-string v1, "INSTALL_ID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/bt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/bt$a;->d:Lcom/flurry/sdk/bt$a;

    new-instance v0, Lcom/flurry/sdk/bt$a;

    const-string v1, "REPORTED_IDS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/bt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/bt$a;->e:Lcom/flurry/sdk/bt$a;

    new-instance v0, Lcom/flurry/sdk/bt$a;

    const-string v1, "FINISHED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/bt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/bt$a;->f:Lcom/flurry/sdk/bt$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/sdk/bt$a;

    sget-object v1, Lcom/flurry/sdk/bt$a;->a:Lcom/flurry/sdk/bt$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/bt$a;->b:Lcom/flurry/sdk/bt$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/bt$a;->c:Lcom/flurry/sdk/bt$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/bt$a;->d:Lcom/flurry/sdk/bt$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/bt$a;->e:Lcom/flurry/sdk/bt$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/bt$a;->f:Lcom/flurry/sdk/bt$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/flurry/sdk/bt$a;->g:[Lcom/flurry/sdk/bt$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 554
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/bt$a;
    .locals 1

    .line 554
    const-class v0, Lcom/flurry/sdk/bt$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/bt$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/bt$a;
    .locals 1

    .line 554
    sget-object v0, Lcom/flurry/sdk/bt$a;->g:[Lcom/flurry/sdk/bt$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/bt$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/bt$a;

    return-object v0
.end method
