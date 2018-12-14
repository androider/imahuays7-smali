.class final enum Lcom/facebook/imagepipeline/k/v$c;
.super Ljava/lang/Enum;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/k/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imagepipeline/k/v$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/imagepipeline/k/v$c;

.field public static final enum b:Lcom/facebook/imagepipeline/k/v$c;

.field public static final enum c:Lcom/facebook/imagepipeline/k/v$c;

.field public static final enum d:Lcom/facebook/imagepipeline/k/v$c;

.field private static final synthetic e:[Lcom/facebook/imagepipeline/k/v$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/facebook/imagepipeline/k/v$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/k/v$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/k/v$c;->a:Lcom/facebook/imagepipeline/k/v$c;

    new-instance v0, Lcom/facebook/imagepipeline/k/v$c;

    const-string v1, "QUEUED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/imagepipeline/k/v$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/k/v$c;->b:Lcom/facebook/imagepipeline/k/v$c;

    new-instance v0, Lcom/facebook/imagepipeline/k/v$c;

    const-string v1, "RUNNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/facebook/imagepipeline/k/v$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/k/v$c;->c:Lcom/facebook/imagepipeline/k/v$c;

    new-instance v0, Lcom/facebook/imagepipeline/k/v$c;

    const-string v1, "RUNNING_AND_PENDING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/facebook/imagepipeline/k/v$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/k/v$c;->d:Lcom/facebook/imagepipeline/k/v$c;

    const/4 v0, 0x4

    .line 49
    new-array v0, v0, [Lcom/facebook/imagepipeline/k/v$c;

    sget-object v1, Lcom/facebook/imagepipeline/k/v$c;->a:Lcom/facebook/imagepipeline/k/v$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imagepipeline/k/v$c;->b:Lcom/facebook/imagepipeline/k/v$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/imagepipeline/k/v$c;->c:Lcom/facebook/imagepipeline/k/v$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/imagepipeline/k/v$c;->d:Lcom/facebook/imagepipeline/k/v$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/imagepipeline/k/v$c;->e:[Lcom/facebook/imagepipeline/k/v$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/k/v$c;
    .locals 1

    .line 49
    const-class v0, Lcom/facebook/imagepipeline/k/v$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/k/v$c;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imagepipeline/k/v$c;
    .locals 1

    .line 49
    sget-object v0, Lcom/facebook/imagepipeline/k/v$c;->e:[Lcom/facebook/imagepipeline/k/v$c;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/k/v$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/k/v$c;

    return-object v0
.end method
