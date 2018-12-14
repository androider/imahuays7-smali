.class Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->getScrollY()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->h:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->h:I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    rem-int/2addr v0, v1

    .line 132
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v1, v1, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->h:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    div-int/2addr v1, v2

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->g:I

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->a(Lcom/mh/movie/core/mvp/ui/widget/WheelView;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;II)V

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    new-instance v3, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;II)V

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->getScrollY()I

    move-result v1

    iput v1, v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->h:I

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->i:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
