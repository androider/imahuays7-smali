.class final enum Lcom/facebook/b/a$a;
.super Ljava/lang/Enum;
.source "AbstractDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/b/a$a;

.field public static final enum b:Lcom/facebook/b/a$a;

.field public static final enum c:Lcom/facebook/b/a$a;

.field private static final synthetic d:[Lcom/facebook/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/facebook/b/a$a;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/b/a$a;->a:Lcom/facebook/b/a$a;

    .line 36
    new-instance v0, Lcom/facebook/b/a$a;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/b/a$a;->b:Lcom/facebook/b/a$a;

    .line 39
    new-instance v0, Lcom/facebook/b/a$a;

    const-string v1, "FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/facebook/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/b/a$a;->c:Lcom/facebook/b/a$a;

    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Lcom/facebook/b/a$a;

    sget-object v1, Lcom/facebook/b/a$a;->a:Lcom/facebook/b/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/b/a$a;->b:Lcom/facebook/b/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/b/a$a;->c:Lcom/facebook/b/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/b/a$a;->d:[Lcom/facebook/b/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/b/a$a;
    .locals 1

    .line 31
    const-class v0, Lcom/facebook/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/b/a$a;

    return-object p0
.end method

.method public static values()[Lcom/facebook/b/a$a;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/b/a$a;->d:[Lcom/facebook/b/a$a;

    invoke-virtual {v0}, [Lcom/facebook/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/b/a$a;

    return-object v0
.end method
