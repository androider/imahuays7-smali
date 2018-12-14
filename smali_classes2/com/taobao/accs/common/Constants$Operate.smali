.class public final enum Lcom/taobao/accs/common/Constants$Operate;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/accs/common/Constants$Operate;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

.field private static final synthetic b:[Lcom/taobao/accs/common/Constants$Operate;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 318
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string v1, "ASK_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    .line 319
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string v1, "REPORT_VERSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    .line 320
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string v1, "TRY_ELECTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    .line 321
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string v1, "START_ELECTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    .line 322
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string v1, "RESULT_ELECTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    .line 323
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string v1, "PING_ELECTION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    const/4 v0, 0x6

    .line 316
    new-array v0, v0, [Lcom/taobao/accs/common/Constants$Operate;

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v7

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->b:[Lcom/taobao/accs/common/Constants$Operate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 329
    iput p3, p0, Lcom/taobao/accs/common/Constants$Operate;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/common/Constants$Operate;
    .locals 1

    .line 316
    const-class v0, Lcom/taobao/accs/common/Constants$Operate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/common/Constants$Operate;

    return-object p0
.end method

.method public static values()[Lcom/taobao/accs/common/Constants$Operate;
    .locals 1

    .line 316
    sget-object v0, Lcom/taobao/accs/common/Constants$Operate;->b:[Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v0}, [Lcom/taobao/accs/common/Constants$Operate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/common/Constants$Operate;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/taobao/accs/common/Constants$Operate;->a:I

    return v0
.end method
