.class Lcom/mh/movie/core/mvp/ui/widget/WheelView$3;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setSeletion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/WheelView;I)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$3;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$3;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$3;->a:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/WheelView$3;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget v2, v2, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->k:I

    mul-int v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->smoothScrollTo(II)V

    return-void
.end method
