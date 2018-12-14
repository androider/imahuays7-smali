.class public final enum Lcom/flurry/sdk/l$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/l$a;

.field public static final enum b:Lcom/flurry/sdk/l$a;

.field public static final enum c:Lcom/flurry/sdk/l$a;

.field public static final enum d:Lcom/flurry/sdk/l$a;

.field private static final synthetic f:[Lcom/flurry/sdk/l$a;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/flurry/sdk/l$a;

    const-string v1, "TEN_SEC"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/l$a;->a:Lcom/flurry/sdk/l$a;

    new-instance v0, Lcom/flurry/sdk/l$a;

    const-string v1, "THIRTY_SEC"

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/sdk/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/l$a;->b:Lcom/flurry/sdk/l$a;

    new-instance v0, Lcom/flurry/sdk/l$a;

    const-string v1, "THREE_MIN"

    const/4 v4, 0x2

    const/16 v5, 0xb4

    invoke-direct {v0, v1, v4, v5}, Lcom/flurry/sdk/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/l$a;->c:Lcom/flurry/sdk/l$a;

    new-instance v0, Lcom/flurry/sdk/l$a;

    const-string v1, "ABANDON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/l$a;->d:Lcom/flurry/sdk/l$a;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/flurry/sdk/l$a;

    sget-object v1, Lcom/flurry/sdk/l$a;->a:Lcom/flurry/sdk/l$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/l$a;->b:Lcom/flurry/sdk/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/l$a;->c:Lcom/flurry/sdk/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/l$a;->d:Lcom/flurry/sdk/l$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/l$a;->f:[Lcom/flurry/sdk/l$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/flurry/sdk/l$a;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/l$a;
    .locals 1

    .line 6
    const-class v0, Lcom/flurry/sdk/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/l$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/l$a;
    .locals 1

    .line 6
    sget-object v0, Lcom/flurry/sdk/l$a;->f:[Lcom/flurry/sdk/l$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/l$a;

    return-object v0
.end method
