.class Lcom/facebook/imagepipeline/k/z$2;
.super Lcom/facebook/imagepipeline/k/e;
.source "LocalExifThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/z;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/ar;

.field final synthetic b:Lcom/facebook/imagepipeline/k/z;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/z;Lcom/facebook/imagepipeline/k/ar;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/z$2;->b:Lcom/facebook/imagepipeline/k/z;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/z$2;->a:Lcom/facebook/imagepipeline/k/ar;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/z$2;->a:Lcom/facebook/imagepipeline/k/ar;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/ar;->a()V

    return-void
.end method
