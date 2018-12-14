.class Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Ljava/lang/String;",
        "Lcom/mh/movie/core/mvp/ui/holder/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/v;
    .locals 3

    .line 171
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/v;

    sget v1, Lcom/mh/movie/core/R$layout;->item_suggestion:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/as;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/as;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/v;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->rvSuggestion:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;Z)Z

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/v;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/v;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/v;Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/v;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;->etSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mh/movie/core/mvp/ui/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/v;

    move-result-object p1

    return-object p1
.end method
