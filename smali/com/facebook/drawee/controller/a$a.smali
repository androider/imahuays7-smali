.class Lcom/facebook/drawee/controller/a$a;
.super Lcom/facebook/drawee/controller/e;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/drawee/controller/e<",
        "TINFO;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/facebook/drawee/controller/e;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/drawee/controller/c;Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/drawee/controller/c<",
            "-TINFO;>;",
            "Lcom/facebook/drawee/controller/c<",
            "-TINFO;>;)",
            "Lcom/facebook/drawee/controller/a$a<",
            "TINFO;>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#createInternal"

    .line 57
    invoke-static {v0}, Lcom/facebook/imagepipeline/l/b;->a(Ljava/lang/String;)V

    .line 59
    :cond_0
    new-instance v0, Lcom/facebook/drawee/controller/a$a;

    invoke-direct {v0}, Lcom/facebook/drawee/controller/a$a;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/controller/a$a;->a(Lcom/facebook/drawee/controller/c;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/a$a;->a(Lcom/facebook/drawee/controller/c;)V

    .line 62
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 63
    invoke-static {}, Lcom/facebook/imagepipeline/l/b;->a()V

    :cond_1
    return-object v0
.end method
