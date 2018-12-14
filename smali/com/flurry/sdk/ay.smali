.class public final enum Lcom/flurry/sdk/ay;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/ay;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/ay;

.field public static final enum b:Lcom/flurry/sdk/ay;

.field public static final enum c:Lcom/flurry/sdk/ay;

.field public static final enum d:Lcom/flurry/sdk/ay;

.field private static final synthetic f:[Lcom/flurry/sdk/ay;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/flurry/sdk/ay;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ay;->a:Lcom/flurry/sdk/ay;

    .line 6
    new-instance v0, Lcom/flurry/sdk/ay;

    const-string v1, "TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/sdk/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/ay;

    .line 7
    new-instance v0, Lcom/flurry/sdk/ay;

    const-string v1, "INVALID_RESPONSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/flurry/sdk/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ay;->c:Lcom/flurry/sdk/ay;

    .line 8
    new-instance v0, Lcom/flurry/sdk/ay;

    const-string v1, "PENDING_COMPLETION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/flurry/sdk/ay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/ay;->d:Lcom/flurry/sdk/ay;

    .line 4
    new-array v0, v6, [Lcom/flurry/sdk/ay;

    sget-object v1, Lcom/flurry/sdk/ay;->a:Lcom/flurry/sdk/ay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/ay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/ay;->c:Lcom/flurry/sdk/ay;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/ay;->d:Lcom/flurry/sdk/ay;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/ay;->f:[Lcom/flurry/sdk/ay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/flurry/sdk/ay;->e:I

    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/ay;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :pswitch_0
    sget-object p0, Lcom/flurry/sdk/ay;->d:Lcom/flurry/sdk/ay;

    return-object p0

    .line 23
    :pswitch_1
    sget-object p0, Lcom/flurry/sdk/ay;->c:Lcom/flurry/sdk/ay;

    return-object p0

    .line 21
    :pswitch_2
    sget-object p0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/ay;

    return-object p0

    .line 19
    :pswitch_3
    sget-object p0, Lcom/flurry/sdk/ay;->a:Lcom/flurry/sdk/ay;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/ay;
    .locals 1

    .line 4
    const-class v0, Lcom/flurry/sdk/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/ay;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/ay;
    .locals 1

    .line 4
    sget-object v0, Lcom/flurry/sdk/ay;->f:[Lcom/flurry/sdk/ay;

    invoke-virtual {v0}, [Lcom/flurry/sdk/ay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/ay;

    return-object v0
.end method
