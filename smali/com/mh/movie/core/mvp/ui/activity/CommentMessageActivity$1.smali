.class Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "CommentMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/g;
    .locals 3

    .line 76
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/g;

    sget v1, Lcom/mh/movie/core/R$layout;->item_message_comment:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/r;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/r;-><init>(Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/g;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 4

    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "comment_bean"

    .line 78
    new-instance v2, Lcom/google/gson/e;

    invoke-direct {v2}, Lcom/google/gson/e;-><init>()V

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;->e:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTargetJson()Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/g;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/g;Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/g;Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;)V
    .locals 2

    .line 85
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/g;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u8bc4\u8bba\u56de\u590d"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/g;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/g;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getContent()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/g;

    move-result-object p1

    return-object p1
.end method
