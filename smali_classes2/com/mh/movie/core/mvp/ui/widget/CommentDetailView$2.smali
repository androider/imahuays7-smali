.class Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$2;
.super Ljava/lang/Object;
.source "CommentDetailView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->i:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->c:Lcom/mh/movie/core/mvp/ui/widget/MyEditText;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/i;->a(Landroid/view/View;)V

    return-void
.end method
