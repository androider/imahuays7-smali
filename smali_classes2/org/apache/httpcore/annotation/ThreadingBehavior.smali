.class public final enum Lorg/apache/httpcore/annotation/ThreadingBehavior;
.super Ljava/lang/Enum;
.source "ThreadingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/httpcore/annotation/ThreadingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMMUTABLE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

.field public static final enum IMMUTABLE_CONDITIONAL:Lorg/apache/httpcore/annotation/ThreadingBehavior;

.field public static final enum SAFE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

.field public static final enum SAFE_CONDITIONAL:Lorg/apache/httpcore/annotation/ThreadingBehavior;

.field public static final enum UNSAFE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

.field private static final synthetic a:[Lorg/apache/httpcore/annotation/ThreadingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;

    const-string v1, "IMMUTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/httpcore/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    .line 45
    new-instance v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;

    const-string v1, "IMMUTABLE_CONDITIONAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/httpcore/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    .line 50
    new-instance v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;

    const-string v1, "SAFE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/httpcore/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;->SAFE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    .line 56
    new-instance v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;

    const-string v1, "SAFE_CONDITIONAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/httpcore/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    .line 61
    new-instance v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;

    const-string v1, "UNSAFE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/httpcore/annotation/ThreadingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;->UNSAFE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    const/4 v0, 0x5

    .line 32
    new-array v0, v0, [Lorg/apache/httpcore/annotation/ThreadingBehavior;

    sget-object v1, Lorg/apache/httpcore/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/httpcore/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/annotation/ThreadingBehavior;->SAFE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/httpcore/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/httpcore/annotation/ThreadingBehavior;->UNSAFE:Lorg/apache/httpcore/annotation/ThreadingBehavior;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;->a:[Lorg/apache/httpcore/annotation/ThreadingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/httpcore/annotation/ThreadingBehavior;
    .locals 1

    .line 32
    const-class v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/httpcore/annotation/ThreadingBehavior;

    return-object p0
.end method

.method public static values()[Lorg/apache/httpcore/annotation/ThreadingBehavior;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/httpcore/annotation/ThreadingBehavior;->a:[Lorg/apache/httpcore/annotation/ThreadingBehavior;

    invoke-virtual {v0}, [Lorg/apache/httpcore/annotation/ThreadingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/httpcore/annotation/ThreadingBehavior;

    return-object v0
.end method
