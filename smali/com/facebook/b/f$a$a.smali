.class Lcom/facebook/b/f$a$a;
.super Ljava/lang/Object;
.source "FirstAvailableDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/b/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/b/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/b/f$a;


# direct methods
.method private constructor <init>(Lcom/facebook/b/f$a;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/facebook/b/f$a$a;->a:Lcom/facebook/b/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/b/f$a;Lcom/facebook/b/f$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/facebook/b/f$a$a;-><init>(Lcom/facebook/b/f$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/b/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Lcom/facebook/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/facebook/b/f$a$a;->a:Lcom/facebook/b/f$a;

    invoke-static {v0, p1}, Lcom/facebook/b/f$a;->b(Lcom/facebook/b/f$a;Lcom/facebook/b/c;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p1}, Lcom/facebook/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/facebook/b/f$a$a;->a:Lcom/facebook/b/f$a;

    invoke-static {v0, p1}, Lcom/facebook/b/f$a;->a(Lcom/facebook/b/f$a;Lcom/facebook/b/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/facebook/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/b/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/facebook/b/f$a$a;->a:Lcom/facebook/b/f$a;

    invoke-static {v0, p1}, Lcom/facebook/b/f$a;->a(Lcom/facebook/b/f$a;Lcom/facebook/b/c;)V

    return-void
.end method

.method public c(Lcom/facebook/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/b/c<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Lcom/facebook/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/b/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/facebook/b/f$a$a;->a:Lcom/facebook/b/f$a;

    invoke-virtual {v0}, Lcom/facebook/b/f$a;->g()F

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/facebook/b/f$a$a;->a:Lcom/facebook/b/f$a;

    invoke-interface {p1}, Lcom/facebook/b/c;->g()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/facebook/b/f$a;->a(F)Z

    return-void
.end method
