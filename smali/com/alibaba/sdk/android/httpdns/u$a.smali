.class final enum Lcom/alibaba/sdk/android/httpdns/u$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/httpdns/u$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/httpdns/u$a;

.field public static final enum b:Lcom/alibaba/sdk/android/httpdns/u$a;

.field public static final enum c:Lcom/alibaba/sdk/android/httpdns/u$a;

.field private static final synthetic d:[Lcom/alibaba/sdk/android/httpdns/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/u$a;

    const-string v1, "ENABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/u$a;->a:Lcom/alibaba/sdk/android/httpdns/u$a;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/u$a;

    const-string v1, "PRE_DISABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/httpdns/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/u$a;->b:Lcom/alibaba/sdk/android/httpdns/u$a;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/u$a;

    const-string v1, "DISABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/sdk/android/httpdns/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/u$a;->c:Lcom/alibaba/sdk/android/httpdns/u$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/sdk/android/httpdns/u$a;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/u$a;->a:Lcom/alibaba/sdk/android/httpdns/u$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/u$a;->b:Lcom/alibaba/sdk/android/httpdns/u$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/u$a;->c:Lcom/alibaba/sdk/android/httpdns/u$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/u$a;->d:[Lcom/alibaba/sdk/android/httpdns/u$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/u$a;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/u$a;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/httpdns/u$a;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/u$a;->d:[Lcom/alibaba/sdk/android/httpdns/u$a;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/httpdns/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/httpdns/u$a;

    return-object v0
.end method
