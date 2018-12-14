.class public final enum Lcom/flurry/sdk/eq$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/eq$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/eq$b;

.field public static final enum b:Lcom/flurry/sdk/eq$b;

.field public static final enum c:Lcom/flurry/sdk/eq$b;

.field public static final enum d:Lcom/flurry/sdk/eq$b;

.field public static final enum e:Lcom/flurry/sdk/eq$b;

.field public static final enum f:Lcom/flurry/sdk/eq$b;

.field public static final enum g:Lcom/flurry/sdk/eq$b;

.field public static final enum h:Lcom/flurry/sdk/eq$b;

.field private static final synthetic j:[Lcom/flurry/sdk/eq$b;


# instance fields
.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 116
    new-instance v0, Lcom/flurry/sdk/eq$b;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/eq$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/eq$b;->a:Lcom/flurry/sdk/eq$b;

    .line 117
    new-instance v0, Lcom/flurry/sdk/eq$b;

    const-string v1, "UNKNOWN"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/sdk/eq$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/eq$b;->b:Lcom/flurry/sdk/eq$b;

    .line 119
    new-instance v0, Lcom/flurry/sdk/eq$b;

    const-string v1, "SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/eq$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/eq$b;->c:Lcom/flurry/sdk/eq$b;

    .line 120
    new-instance v0, Lcom/flurry/sdk/eq$b;

    const-string v1, "SERVICE_MISSING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/flurry/sdk/eq$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/eq$b;->d:Lcom/flurry/sdk/eq$b;

    .line 121
    new-instance v0, Lcom/flurry/sdk/eq$b;

    const-string v1, "SERVICE_UPDATING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v4}, Lcom/flurry/sdk/eq$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/eq$b;->e:Lcom/flurry/sdk/eq$b;

    .line 122
    new-instance v0, Lcom/flurry/sdk/eq$b;

    const-string v1, "SERVICE_VERSION_UPDATE_REQUIRED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v5}, Lcom/flurry/sdk/eq$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/eq$b;->f:Lcom/flurry/sdk/eq$b;

    .line 123
    new-instance v0, Lcom/flurry/sdk/eq$b;

    const-string v1, "SERVICE_DISABLED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v6}, Lcom/flurry/sdk/eq$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/eq$b;->g:Lcom/flurry/sdk/eq$b;

    .line 124
    new-instance v0, Lcom/flurry/sdk/eq$b;

    const-string v1, "SERVICE_INVALID"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v7}, Lcom/flurry/sdk/eq$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/eq$b;->h:Lcom/flurry/sdk/eq$b;

    const/16 v0, 0x8

    .line 115
    new-array v0, v0, [Lcom/flurry/sdk/eq$b;

    sget-object v1, Lcom/flurry/sdk/eq$b;->a:Lcom/flurry/sdk/eq$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/eq$b;->b:Lcom/flurry/sdk/eq$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/eq$b;->c:Lcom/flurry/sdk/eq$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/eq$b;->d:Lcom/flurry/sdk/eq$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/eq$b;->e:Lcom/flurry/sdk/eq$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/eq$b;->f:Lcom/flurry/sdk/eq$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/eq$b;->g:Lcom/flurry/sdk/eq$b;

    aput-object v1, v0, v8

    sget-object v1, Lcom/flurry/sdk/eq$b;->h:Lcom/flurry/sdk/eq$b;

    aput-object v1, v0, v9

    sput-object v0, Lcom/flurry/sdk/eq$b;->j:[Lcom/flurry/sdk/eq$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/flurry/sdk/eq$b;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/eq$b;
    .locals 1

    .line 115
    const-class v0, Lcom/flurry/sdk/eq$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/eq$b;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/eq$b;
    .locals 1

    .line 115
    sget-object v0, Lcom/flurry/sdk/eq$b;->j:[Lcom/flurry/sdk/eq$b;

    invoke-virtual {v0}, [Lcom/flurry/sdk/eq$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/eq$b;

    return-object v0
.end method
