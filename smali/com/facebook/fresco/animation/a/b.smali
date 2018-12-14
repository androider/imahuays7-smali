.class public Lcom/facebook/fresco/animation/a/b;
.super Ljava/lang/Object;
.source "AnimationBackendDelegate.java"

# interfaces
.implements Lcom/facebook/fresco/animation/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/fresco/animation/a/a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/fresco/animation/a/a;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/fresco/animation/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:I
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
        to = 0xffL
    .end annotation
.end field

.field private c:Landroid/graphics/ColorFilter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/animation/a/a;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/animation/a/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/facebook/fresco/animation/a/b;->b:I

    .line 39
    iput-object p1, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    .line 102
    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->a()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/a/a;->a(I)V

    .line 67
    :cond_0
    iput p1, p0, Lcom/facebook/fresco/animation/a/b;->b:I

    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/a/a;->a(Landroid/graphics/ColorFilter;)V

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/a/b;->c:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/a/a;->a(Landroid/graphics/Rect;)V

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/a/b;->d:Landroid/graphics/Rect;

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/fresco/animation/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    .line 109
    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->b()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(I)I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/a/a;->b(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public c()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->c()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->d()I

    move-result v0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/a/b;->a:Lcom/facebook/fresco/animation/a/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/a/a;->e()I

    move-result v0

    :goto_0
    return v0
.end method
