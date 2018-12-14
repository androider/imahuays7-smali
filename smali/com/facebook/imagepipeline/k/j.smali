.class public Lcom/facebook/imagepipeline/k/j;
.super Ljava/lang/Object;
.source "BranchOnSeparateImagesProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/k/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/ak<",
        "Lcom/facebook/imagepipeline/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/k/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/ak;Lcom/facebook/imagepipeline/k/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/ak<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/j;->a:Lcom/facebook/imagepipeline/k/ak;

    .line 27
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/j;->b:Lcom/facebook/imagepipeline/k/ak;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/j;)Lcom/facebook/imagepipeline/k/ak;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/facebook/imagepipeline/k/j;->b:Lcom/facebook/imagepipeline/k/ak;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/k<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/k/al;",
            ")V"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/facebook/imagepipeline/k/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/imagepipeline/k/j$a;-><init>(Lcom/facebook/imagepipeline/k/j;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;Lcom/facebook/imagepipeline/k/j$1;)V

    .line 35
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/j;->a:Lcom/facebook/imagepipeline/k/ak;

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method
