.class final Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;
.super Ljava/lang/Object;
.source "GSYVideoGLView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;[FLcom/shuyu/gsyvideoplayer/render/b/a;I)Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:I

.field final synthetic d:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

.field final synthetic e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field final synthetic f:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;I)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->b:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->c:I

    iput-object p4, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->d:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    iput-object p5, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    iput p6, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shuyu/gsyvideoplayer/render/b/a;Ljava/lang/String;IZ)V
    .locals 9

    if-eqz p4, :cond_0

    .line 397
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->b:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->c:I

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->d:Lcom/shuyu/gsyvideoplayer/render/view/a/c;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->e:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    .line 402
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/render/b/a;->c()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;

    move-result-object v5

    .line 403
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/render/b/a;->a()[F

    move-result-object v6

    iget v8, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->f:I

    move-object v7, p1

    .line 397
    invoke-static/range {v0 .. v8}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->a(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/a/c;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$a;[FLcom/shuyu/gsyvideoplayer/render/b/a;I)Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;

    :cond_0
    return-void
.end method
