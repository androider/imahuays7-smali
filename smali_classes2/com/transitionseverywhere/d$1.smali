.class Lcom/transitionseverywhere/d$1;
.super Lcom/transitionseverywhere/g$c;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/d;->a(Landroid/view/View;FFLcom/transitionseverywhere/l;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:Lcom/transitionseverywhere/d;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/d;Landroid/view/View;F)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/transitionseverywhere/d$1;->c:Lcom/transitionseverywhere/d;

    iput-object p2, p0, Lcom/transitionseverywhere/d$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/transitionseverywhere/d$1;->b:F

    invoke-direct {p0}, Lcom/transitionseverywhere/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transitionseverywhere/g;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/transitionseverywhere/d$1;->a:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/d$1;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
