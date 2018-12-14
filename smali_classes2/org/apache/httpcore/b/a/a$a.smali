.class final enum Lorg/apache/httpcore/b/a/a$a;
.super Ljava/lang/Enum;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/httpcore/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/httpcore/b/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/apache/httpcore/b/a/a$a;

.field public static final enum b:Lorg/apache/httpcore/b/a/a$a;

.field public static final enum c:Lorg/apache/httpcore/b/a/a$a;

.field private static final synthetic d:[Lorg/apache/httpcore/b/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    new-instance v0, Lorg/apache/httpcore/b/a/a$a;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/httpcore/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/httpcore/b/a/a$a;->a:Lorg/apache/httpcore/b/a/a$a;

    new-instance v0, Lorg/apache/httpcore/b/a/a$a;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/httpcore/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/httpcore/b/a/a$a;->b:Lorg/apache/httpcore/b/a/a$a;

    new-instance v0, Lorg/apache/httpcore/b/a/a$a;

    const-string v1, "STOPPING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/httpcore/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/httpcore/b/a/a$a;->c:Lorg/apache/httpcore/b/a/a$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/httpcore/b/a/a$a;

    sget-object v1, Lorg/apache/httpcore/b/a/a$a;->a:Lorg/apache/httpcore/b/a/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/httpcore/b/a/a$a;->b:Lorg/apache/httpcore/b/a/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/httpcore/b/a/a$a;->c:Lorg/apache/httpcore/b/a/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/httpcore/b/a/a$a;->d:[Lorg/apache/httpcore/b/a/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/httpcore/b/a/a$a;
    .locals 1

    .line 53
    const-class v0, Lorg/apache/httpcore/b/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/httpcore/b/a/a$a;

    return-object p0
.end method

.method public static values()[Lorg/apache/httpcore/b/a/a$a;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/httpcore/b/a/a$a;->d:[Lorg/apache/httpcore/b/a/a$a;

    invoke-virtual {v0}, [Lorg/apache/httpcore/b/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/httpcore/b/a/a$a;

    return-object v0
.end method
