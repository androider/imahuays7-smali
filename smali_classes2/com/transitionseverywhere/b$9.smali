.class Lcom/transitionseverywhere/b$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/b;->a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:F

.field final synthetic e:Lcom/transitionseverywhere/b;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/b;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/transitionseverywhere/b$9;->e:Lcom/transitionseverywhere/b;

    iput-object p2, p0, Lcom/transitionseverywhere/b$9;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transitionseverywhere/b$9;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lcom/transitionseverywhere/b$9;->c:Landroid/view/View;

    iput p5, p0, Lcom/transitionseverywhere/b$9;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 433
    iget-object p1, p0, Lcom/transitionseverywhere/b$9;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transitionseverywhere/b$9;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/k;->b(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object p1, p0, Lcom/transitionseverywhere/b$9;->c:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/b$9;->d:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
