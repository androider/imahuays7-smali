.class public final enum Lcom/flurry/sdk/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/e$a;

.field public static final enum b:Lcom/flurry/sdk/e$a;

.field public static final enum c:Lcom/flurry/sdk/e$a;

.field public static final enum d:Lcom/flurry/sdk/e$a;

.field private static final synthetic g:[Lcom/flurry/sdk/e$a;


# instance fields
.field e:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/flurry/sdk/e$a;

    const-string v1, "Complete"

    const-string v2, "Complete"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/flurry/sdk/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/e$a;->a:Lcom/flurry/sdk/e$a;

    .line 40
    new-instance v0, Lcom/flurry/sdk/e$a;

    const-string v1, "CompleteNoChange"

    const-string v2, "No Change"

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/flurry/sdk/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/e$a;->b:Lcom/flurry/sdk/e$a;

    .line 43
    new-instance v0, Lcom/flurry/sdk/e$a;

    const-string v1, "Fail"

    const-string v2, "Fail"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/flurry/sdk/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/e$a;->c:Lcom/flurry/sdk/e$a;

    .line 46
    new-instance v0, Lcom/flurry/sdk/e$a;

    const-string v1, "None"

    const-string v2, "None"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/flurry/sdk/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/e$a;->d:Lcom/flurry/sdk/e$a;

    const/4 v0, 0x4

    .line 35
    new-array v0, v0, [Lcom/flurry/sdk/e$a;

    sget-object v1, Lcom/flurry/sdk/e$a;->a:Lcom/flurry/sdk/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/e$a;->b:Lcom/flurry/sdk/e$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/e$a;->c:Lcom/flurry/sdk/e$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/e$a;->d:Lcom/flurry/sdk/e$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/sdk/e$a;->g:[Lcom/flurry/sdk/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/flurry/sdk/e$a;->f:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/flurry/sdk/e$a;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/e$a;
    .locals 1

    .line 35
    const-class v0, Lcom/flurry/sdk/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/e$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/e$a;
    .locals 1

    .line 35
    sget-object v0, Lcom/flurry/sdk/e$a;->g:[Lcom/flurry/sdk/e$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/e$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/e$a;->f:Ljava/lang/String;

    return-object v0
.end method
