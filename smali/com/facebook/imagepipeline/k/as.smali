.class public Lcom/facebook/imagepipeline/k/as;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/k/at;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/k/at;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/k/ak;

    iput-object p1, p0, Lcom/facebook/imagepipeline/k/as;->a:Lcom/facebook/imagepipeline/k/ak;

    .line 26
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/as;->b:Lcom/facebook/imagepipeline/k/at;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/as;)Lcom/facebook/imagepipeline/k/ak;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/as;->a:Lcom/facebook/imagepipeline/k/ak;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/as;)Lcom/facebook/imagepipeline/k/at;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/as;->b:Lcom/facebook/imagepipeline/k/at;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->c()Lcom/facebook/imagepipeline/k/an;

    move-result-object v6

    .line 32
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/al;->b()Ljava/lang/String;

    move-result-object v7

    .line 33
    new-instance v10, Lcom/facebook/imagepipeline/k/as$1;

    const-string v4, "BackgroundThreadHandoffProducer"

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v5, v7

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/k/as$1;-><init>(Lcom/facebook/imagepipeline/k/as;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    .line 52
    new-instance p1, Lcom/facebook/imagepipeline/k/as$2;

    invoke-direct {p1, p0, v10}, Lcom/facebook/imagepipeline/k/as$2;-><init>(Lcom/facebook/imagepipeline/k/as;Lcom/facebook/imagepipeline/k/ar;)V

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/k/al;->a(Lcom/facebook/imagepipeline/k/am;)V

    .line 60
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/as;->b:Lcom/facebook/imagepipeline/k/at;

    invoke-virtual {p1, v10}, Lcom/facebook/imagepipeline/k/at;->a(Ljava/lang/Runnable;)V

    return-void
.end method
