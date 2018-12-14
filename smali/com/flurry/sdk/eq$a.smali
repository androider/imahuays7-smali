.class public final enum Lcom/flurry/sdk/eq$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/eq$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/eq$a;

.field public static final enum b:Lcom/flurry/sdk/eq$a;

.field public static final enum c:Lcom/flurry/sdk/eq$a;

.field public static final enum d:Lcom/flurry/sdk/eq$a;

.field private static final synthetic f:[Lcom/flurry/sdk/eq$a;


# instance fields
.field public e:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 99
    new-instance v0, Lcom/flurry/sdk/eq$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/eq$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/flurry/sdk/eq$a;->a:Lcom/flurry/sdk/eq$a;

    .line 100
    new-instance v0, Lcom/flurry/sdk/eq$a;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/eq$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/flurry/sdk/eq$a;->b:Lcom/flurry/sdk/eq$a;

    .line 101
    new-instance v0, Lcom/flurry/sdk/eq$a;

    const-string v1, "INACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/flurry/sdk/eq$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/flurry/sdk/eq$a;->c:Lcom/flurry/sdk/eq$a;

    .line 102
    new-instance v0, Lcom/flurry/sdk/eq$a;

    const-string v1, "BACKGROUND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/flurry/sdk/eq$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/flurry/sdk/eq$a;->d:Lcom/flurry/sdk/eq$a;

    const/4 v0, 0x4

    .line 98
    new-array v0, v0, [Lcom/flurry/sdk/eq$a;

    sget-object v1, Lcom/flurry/sdk/eq$a;->a:Lcom/flurry/sdk/eq$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/eq$a;->b:Lcom/flurry/sdk/eq$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/eq$a;->c:Lcom/flurry/sdk/eq$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/eq$a;->d:Lcom/flurry/sdk/eq$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/eq$a;->f:[Lcom/flurry/sdk/eq$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-byte p3, p0, Lcom/flurry/sdk/eq$a;->e:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/eq$a;
    .locals 1

    .line 98
    const-class v0, Lcom/flurry/sdk/eq$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/eq$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/eq$a;
    .locals 1

    .line 98
    sget-object v0, Lcom/flurry/sdk/eq$a;->f:[Lcom/flurry/sdk/eq$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/eq$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/eq$a;

    return-object v0
.end method
