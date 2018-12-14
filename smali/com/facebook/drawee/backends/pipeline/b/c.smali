.class public Lcom/facebook/drawee/backends/pipeline/b/c;
.super Lcom/facebook/imagepipeline/h/a;
.source "ImageOriginRequestListener.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lcom/facebook/drawee/backends/pipeline/b/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/drawee/backends/pipeline/b/b;)V
    .locals 0
    .param p2    # Lcom/facebook/drawee/backends/pipeline/b/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0}, Lcom/facebook/imagepipeline/h/a;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/c;->b:Lcom/facebook/drawee/backends/pipeline/b/b;

    .line 24
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/b/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/c;->b:Lcom/facebook/drawee/backends/pipeline/b/b;

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/c;->b:Lcom/facebook/drawee/backends/pipeline/b/b;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/b/c;->a:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Lcom/facebook/drawee/backends/pipeline/b/d;->a(Ljava/lang/String;)I

    move-result p2

    .line 39
    invoke-interface {p1, v0, p2, p3}, Lcom/facebook/drawee/backends/pipeline/b/b;->a(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
