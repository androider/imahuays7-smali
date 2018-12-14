.class Lmaster/flame/danmaku/ui/widget/a$2;
.super Lmaster/flame/danmaku/danmaku/model/l$c;
.source "DanmakuTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/ui/widget/a;->a(FF)Lmaster/flame/danmaku/danmaku/model/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/l$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lmaster/flame/danmaku/danmaku/model/l;

.field final synthetic d:Lmaster/flame/danmaku/ui/widget/a;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/a;FFLmaster/flame/danmaku/danmaku/model/l;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/a$2;->d:Lmaster/flame/danmaku/ui/widget/a;

    iput p2, p0, Lmaster/flame/danmaku/ui/widget/a$2;->a:F

    iput p3, p0, Lmaster/flame/danmaku/ui/widget/a$2;->b:F

    iput-object p4, p0, Lmaster/flame/danmaku/ui/widget/a$2;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/l$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 107
    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/ui/widget/a$2;->a(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 6

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$2;->d:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/a;->c(Lmaster/flame/danmaku/ui/widget/a;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->k()F

    move-result v1

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->l()F

    move-result v2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$2;->d:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v0}, Lmaster/flame/danmaku/ui/widget/a;->c(Lmaster/flame/danmaku/ui/widget/a;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/a$2;->a:F

    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/a$2;->d:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v2}, Lmaster/flame/danmaku/ui/widget/a;->d(Lmaster/flame/danmaku/ui/widget/a;)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lmaster/flame/danmaku/ui/widget/a$2;->b:F

    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/a$2;->d:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v3}, Lmaster/flame/danmaku/ui/widget/a;->e(Lmaster/flame/danmaku/ui/widget/a;)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lmaster/flame/danmaku/ui/widget/a$2;->a:F

    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/a$2;->d:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v4}, Lmaster/flame/danmaku/ui/widget/a;->d(Lmaster/flame/danmaku/ui/widget/a;)F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lmaster/flame/danmaku/ui/widget/a$2;->b:F

    iget-object v5, p0, Lmaster/flame/danmaku/ui/widget/a$2;->d:Lmaster/flame/danmaku/ui/widget/a;

    invoke-static {v5}, Lmaster/flame/danmaku/ui/widget/a;->e(Lmaster/flame/danmaku/ui/widget/a;)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/a$2;->c:Lmaster/flame/danmaku/danmaku/model/l;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/l;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
