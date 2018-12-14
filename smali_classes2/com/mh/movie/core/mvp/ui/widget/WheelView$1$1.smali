.class Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;II)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->c:Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->a:I

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->c:Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->c:Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->h:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->a:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->c:Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->smoothScrollTo(II)V

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->c:Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->b:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->c:Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    .line 146
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;->c:Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)V

    return-void
.end method
