.class public final enum Lcom/flurry/sdk/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/d$a;

.field public static final enum b:Lcom/flurry/sdk/d$a;

.field public static final enum c:Lcom/flurry/sdk/d$a;

.field private static final synthetic e:[Lcom/flurry/sdk/d$a;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/flurry/sdk/d$a;

    const-string v1, "String"

    const-string v2, "string"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    .line 26
    new-instance v0, Lcom/flurry/sdk/d$a;

    const-string v1, "Locale"

    const-string v2, "localizedString"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    .line 28
    new-instance v0, Lcom/flurry/sdk/d$a;

    const-string v1, "Tombstone"

    const-string v2, "tombstone"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/d$a;->c:Lcom/flurry/sdk/d$a;

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Lcom/flurry/sdk/d$a;

    sget-object v1, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/d$a;->c:Lcom/flurry/sdk/d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/d$a;->e:[Lcom/flurry/sdk/d$a;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/flurry/sdk/d$a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/d$a;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/flurry/sdk/d$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/d$a;
    .locals 1

    .line 23
    const-class v0, Lcom/flurry/sdk/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/d$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/d$a;
    .locals 1

    .line 23
    sget-object v0, Lcom/flurry/sdk/d$a;->e:[Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/d$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/d$a;->d:Ljava/lang/String;

    return-object v0
.end method
