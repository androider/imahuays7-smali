.class Lcom/facebook/imagepipeline/k/as$1;
.super Lcom/facebook/imagepipeline/k/ar;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/as;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/ar<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/k/an;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/imagepipeline/k/k;

.field final synthetic e:Lcom/facebook/imagepipeline/k/al;

.field final synthetic f:Lcom/facebook/imagepipeline/k/as;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/as;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/as$1;->f:Lcom/facebook/imagepipeline/k/as;

    iput-object p6, p0, Lcom/facebook/imagepipeline/k/as$1;->b:Lcom/facebook/imagepipeline/k/an;

    iput-object p7, p0, Lcom/facebook/imagepipeline/k/as$1;->c:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/imagepipeline/k/as$1;->d:Lcom/facebook/imagepipeline/k/k;

    iput-object p9, p0, Lcom/facebook/imagepipeline/k/as$1;->e:Lcom/facebook/imagepipeline/k/al;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/k/ar;-><init>(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/as$1;->b:Lcom/facebook/imagepipeline/k/an;

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/as$1;->c:Ljava/lang/String;

    const-string v1, "BackgroundThreadHandoffProducer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/as$1;->f:Lcom/facebook/imagepipeline/k/as;

    invoke-static {p1}, Lcom/facebook/imagepipeline/k/as;->a(Lcom/facebook/imagepipeline/k/as;)Lcom/facebook/imagepipeline/k/ak;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/as$1;->d:Lcom/facebook/imagepipeline/k/k;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/as$1;->e:Lcom/facebook/imagepipeline/k/al;

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
