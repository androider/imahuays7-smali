.class final enum Lcom/facebook/imagepipeline/animated/b/d$b;
.super Ljava/lang/Enum;
.source "AnimatedImageCompositor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imagepipeline/animated/b/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/imagepipeline/animated/b/d$b;

.field public static final enum b:Lcom/facebook/imagepipeline/animated/b/d$b;

.field public static final enum c:Lcom/facebook/imagepipeline/animated/b/d$b;

.field public static final enum d:Lcom/facebook/imagepipeline/animated/b/d$b;

.field private static final synthetic e:[Lcom/facebook/imagepipeline/animated/b/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 126
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/d$b;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/animated/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/animated/b/d$b;->a:Lcom/facebook/imagepipeline/animated/b/d$b;

    .line 129
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/d$b;

    const-string v1, "NOT_REQUIRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/imagepipeline/animated/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/animated/b/d$b;->b:Lcom/facebook/imagepipeline/animated/b/d$b;

    .line 132
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/d$b;

    const-string v1, "SKIP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/facebook/imagepipeline/animated/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/animated/b/d$b;->c:Lcom/facebook/imagepipeline/animated/b/d$b;

    .line 135
    new-instance v0, Lcom/facebook/imagepipeline/animated/b/d$b;

    const-string v1, "ABORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/facebook/imagepipeline/animated/b/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/animated/b/d$b;->d:Lcom/facebook/imagepipeline/animated/b/d$b;

    const/4 v0, 0x4

    .line 124
    new-array v0, v0, [Lcom/facebook/imagepipeline/animated/b/d$b;

    sget-object v1, Lcom/facebook/imagepipeline/animated/b/d$b;->a:Lcom/facebook/imagepipeline/animated/b/d$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imagepipeline/animated/b/d$b;->b:Lcom/facebook/imagepipeline/animated/b/d$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/imagepipeline/animated/b/d$b;->c:Lcom/facebook/imagepipeline/animated/b/d$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/imagepipeline/animated/b/d$b;->d:Lcom/facebook/imagepipeline/animated/b/d$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/imagepipeline/animated/b/d$b;->e:[Lcom/facebook/imagepipeline/animated/b/d$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/b/d$b;
    .locals 1

    .line 124
    const-class v0, Lcom/facebook/imagepipeline/animated/b/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/animated/b/d$b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imagepipeline/animated/b/d$b;
    .locals 1

    .line 124
    sget-object v0, Lcom/facebook/imagepipeline/animated/b/d$b;->e:[Lcom/facebook/imagepipeline/animated/b/d$b;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/animated/b/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/animated/b/d$b;

    return-object v0
.end method
