.class public final enum Lcom/flurry/sdk/ct$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/ct$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ct$a;

.field public static final enum b:Lcom/flurry/sdk/ct$a;

.field public static final enum c:Lcom/flurry/sdk/ct$a;

.field private static final synthetic e:[Lcom/flurry/sdk/ct$a;


# instance fields
.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/flurry/sdk/ct$a;

    const-string v1, "NONE"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/ct$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct$a;

    .line 31
    new-instance v0, Lcom/flurry/sdk/ct$a;

    const-string v1, "CRYPTO_ALGO_PADDING_7"

    const-string v2, "AES/CBC/PKCS7Padding"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/ct$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/ct$a;->b:Lcom/flurry/sdk/ct$a;

    .line 32
    new-instance v0, Lcom/flurry/sdk/ct$a;

    const-string v1, "CRYPTO_ALGO_PADDING_5"

    const-string v2, "AES/CBC/PKCS5Padding"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/ct$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/ct$a;->c:Lcom/flurry/sdk/ct$a;

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Lcom/flurry/sdk/ct$a;

    sget-object v1, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ct$a;->b:Lcom/flurry/sdk/ct$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ct$a;->c:Lcom/flurry/sdk/ct$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/ct$a;->e:[Lcom/flurry/sdk/ct$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/flurry/sdk/ct$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/ct$a;
    .locals 5

    .line 44
    invoke-static {}, Lcom/flurry/sdk/ct$a;->values()[Lcom/flurry/sdk/ct$a;

    move-result-object v0

    .line 45
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 46
    invoke-virtual {v3}, Lcom/flurry/sdk/ct$a;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_1
    sget-object p0, Lcom/flurry/sdk/ct$a;->a:Lcom/flurry/sdk/ct$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ct$a;
    .locals 1

    .line 29
    const-class v0, Lcom/flurry/sdk/ct$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ct$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/ct$a;
    .locals 1

    .line 29
    sget-object v0, Lcom/flurry/sdk/ct$a;->e:[Lcom/flurry/sdk/ct$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ct$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ct$a;

    return-object v0
.end method
