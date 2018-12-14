.class Lcom/facebook/imagepipeline/k/aj$c;
.super Lcom/facebook/imagepipeline/k/n;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/k/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/n<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/g/c;",
        ">;",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/aj;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/aj;Lcom/facebook/imagepipeline/k/aj$a;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aj$c;->a:Lcom/facebook/imagepipeline/k/aj;

    .line 307
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/n;-><init>(Lcom/facebook/imagepipeline/k/k;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/k/aj;Lcom/facebook/imagepipeline/k/aj$a;Lcom/facebook/imagepipeline/k/aj$1;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/aj$c;-><init>(Lcom/facebook/imagepipeline/k/aj;Lcom/facebook/imagepipeline/k/aj$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/g/c;",
            ">;I)V"
        }
    .end annotation

    .line 314
    invoke-static {p2}, Lcom/facebook/imagepipeline/k/aj$c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/aj$c;->d()Lcom/facebook/imagepipeline/k/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/k;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 302
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/aj$c;->a(Lcom/facebook/common/references/a;I)V

    return-void
.end method
