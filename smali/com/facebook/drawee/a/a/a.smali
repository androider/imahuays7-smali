.class public Lcom/facebook/drawee/a/a/a;
.super Lcom/facebook/drawee/controller/b;
.source "ImageLoadingTimeControllerListener.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/facebook/drawee/a/a/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/a/a/b;)V
    .locals 2
    .param p1    # Lcom/facebook/drawee/a/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/facebook/drawee/a/a/a;->a:J

    .line 21
    iput-wide v0, p0, Lcom/facebook/drawee/a/a/a;->b:J

    .line 27
    iput-object p1, p0, Lcom/facebook/drawee/a/a/a;->c:Lcom/facebook/drawee/a/a/b;

    return-void
.end method


# virtual methods
.method public onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/drawee/a/a/a;->b:J

    .line 39
    iget-object p1, p0, Lcom/facebook/drawee/a/a/a;->c:Lcom/facebook/drawee/a/a/b;

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/facebook/drawee/a/a/a;->c:Lcom/facebook/drawee/a/a/b;

    iget-wide p2, p0, Lcom/facebook/drawee/a/a/a;->b:J

    iget-wide v0, p0, Lcom/facebook/drawee/a/a/a;->a:J

    sub-long v2, p2, v0

    invoke-interface {p1, v2, v3}, Lcom/facebook/drawee/a/a/b;->a(J)V

    :cond_0
    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/drawee/a/a/a;->a:J

    return-void
.end method
