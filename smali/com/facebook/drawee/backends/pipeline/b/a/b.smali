.class public Lcom/facebook/drawee/backends/pipeline/b/a/b;
.super Ljava/lang/Object;
.source "ImagePerfImageOriginListener.java"

# interfaces
.implements Lcom/facebook/drawee/backends/pipeline/b/b;


# instance fields
.field private final a:Lcom/facebook/drawee/backends/pipeline/b/h;

.field private final b:Lcom/facebook/drawee/backends/pipeline/b/g;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/backends/pipeline/b/h;Lcom/facebook/drawee/backends/pipeline/b/g;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/b;->a:Lcom/facebook/drawee/backends/pipeline/b/h;

    .line 23
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/b;->b:Lcom/facebook/drawee/backends/pipeline/b/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZ)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/b;->a:Lcom/facebook/drawee/backends/pipeline/b/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/b/h;->b(I)V

    .line 29
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/b/a/b;->b:Lcom/facebook/drawee/backends/pipeline/b/g;

    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/b/a/b;->a:Lcom/facebook/drawee/backends/pipeline/b/h;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/b/g;->a(Lcom/facebook/drawee/backends/pipeline/b/h;I)V

    return-void
.end method
