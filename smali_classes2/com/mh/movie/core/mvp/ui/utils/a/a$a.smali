.class final enum Lcom/mh/movie/core/mvp/ui/utils/a/a$a;
.super Ljava/lang/Enum;
.source "CheckDomainUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/utils/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mh/movie/core/mvp/ui/utils/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

.field public static final enum b:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

.field public static final enum c:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

.field private static final synthetic d:[Lcom/mh/movie/core/mvp/ui/utils/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    const-string v1, "STEP_DECODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->a:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    .line 31
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    const-string v1, "STEP_PING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->b:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    .line 32
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    const-string v1, "NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->c:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->a:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->b:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->c:Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->d:[Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mh/movie/core/mvp/ui/utils/a/a$a;
    .locals 1

    .line 29
    const-class v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    return-object p0
.end method

.method public static values()[Lcom/mh/movie/core/mvp/ui/utils/a/a$a;
    .locals 1

    .line 29
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->d:[Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    invoke-virtual {v0}, [Lcom/mh/movie/core/mvp/ui/utils/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mh/movie/core/mvp/ui/utils/a/a$a;

    return-object v0
.end method
