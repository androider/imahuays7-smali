.class Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "ScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "TT;",
        "Lcom/mh/movie/core/mvp/ui/holder/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;Z)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/t;
    .locals 3

    .line 65
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/t;

    sget v1, Lcom/mh/movie/core/R$layout;->item_screen:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/dialog/n;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/n;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/t;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    iput p1, v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->b:I

    .line 67
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;->notifyDataSetChanged()V

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 62
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;->a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/Object;I)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/ui/holder/t;",
            "TT;I)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a(Lcom/mh/movie/core/mvp/ui/holder/t;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/t;

    move-result-object p1

    return-object p1
.end method
