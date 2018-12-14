.class final Lcom/facebook/imagepipeline/c/a$1;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/c/a;->a(Lcom/facebook/common/internal/j;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/c/h$a;)Lcom/facebook/imagepipeline/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/c/v<",
        "Lcom/facebook/imagepipeline/g/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/g/c;)I
    .locals 0

    .line 35
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/c;->d()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/facebook/imagepipeline/g/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/c/a$1;->a(Lcom/facebook/imagepipeline/g/c;)I

    move-result p1

    return p1
.end method
