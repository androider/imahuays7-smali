.class public final enum Lcom/flurry/sdk/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/h$a;

.field public static final enum b:Lcom/flurry/sdk/h$a;

.field public static final enum c:Lcom/flurry/sdk/h$a;

.field public static final enum d:Lcom/flurry/sdk/h$a;

.field public static final enum e:Lcom/flurry/sdk/h$a;

.field public static final enum f:Lcom/flurry/sdk/h$a;

.field public static final enum g:Lcom/flurry/sdk/h$a;

.field private static final synthetic i:[Lcom/flurry/sdk/h$a;


# instance fields
.field h:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Lcom/flurry/sdk/h$a;

    const-string v1, "SUCCEED"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/h$a;->a:Lcom/flurry/sdk/h$a;

    .line 33
    new-instance v0, Lcom/flurry/sdk/h$a;

    const-string v1, "NO_CHANGE"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/h$a;->b:Lcom/flurry/sdk/h$a;

    .line 38
    new-instance v0, Lcom/flurry/sdk/h$a;

    const-string v1, "IO"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/flurry/sdk/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/h$a;->c:Lcom/flurry/sdk/h$a;

    .line 43
    new-instance v0, Lcom/flurry/sdk/h$a;

    const-string v1, "NOT_VALID_JSON"

    const/4 v5, 0x3

    const/4 v6, -0x2

    invoke-direct {v0, v1, v5, v6}, Lcom/flurry/sdk/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/h$a;->d:Lcom/flurry/sdk/h$a;

    .line 49
    new-instance v0, Lcom/flurry/sdk/h$a;

    const-string v1, "AUTHENTICATE"

    const/4 v6, 0x4

    const/4 v7, -0x3

    invoke-direct {v0, v1, v6, v7}, Lcom/flurry/sdk/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/h$a;->e:Lcom/flurry/sdk/h$a;

    .line 54
    new-instance v0, Lcom/flurry/sdk/h$a;

    const-string v1, "UNKNOWN_CERTIFICATE"

    const/4 v7, 0x5

    const/4 v8, -0x4

    invoke-direct {v0, v1, v7, v8}, Lcom/flurry/sdk/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/h$a;->f:Lcom/flurry/sdk/h$a;

    .line 59
    new-instance v0, Lcom/flurry/sdk/h$a;

    const-string v1, "OTHER"

    const/4 v8, 0x6

    const/4 v9, -0x5

    invoke-direct {v0, v1, v8, v9}, Lcom/flurry/sdk/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/h$a;->g:Lcom/flurry/sdk/h$a;

    const/4 v0, 0x7

    .line 24
    new-array v0, v0, [Lcom/flurry/sdk/h$a;

    sget-object v1, Lcom/flurry/sdk/h$a;->a:Lcom/flurry/sdk/h$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/h$a;->b:Lcom/flurry/sdk/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/h$a;->c:Lcom/flurry/sdk/h$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/h$a;->d:Lcom/flurry/sdk/h$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/h$a;->e:Lcom/flurry/sdk/h$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/h$a;->f:Lcom/flurry/sdk/h$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/h$a;->g:Lcom/flurry/sdk/h$a;

    aput-object v1, v0, v8

    sput-object v0, Lcom/flurry/sdk/h$a;->i:[Lcom/flurry/sdk/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/flurry/sdk/h$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/h$a;
    .locals 1

    .line 24
    const-class v0, Lcom/flurry/sdk/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/h$a;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/h$a;
    .locals 1

    .line 24
    sget-object v0, Lcom/flurry/sdk/h$a;->i:[Lcom/flurry/sdk/h$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/h$a;

    return-object v0
.end method
