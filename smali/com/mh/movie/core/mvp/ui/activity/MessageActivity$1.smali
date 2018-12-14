.class Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "MessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;",
        "Lcom/mh/movie/core/mvp/ui/holder/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/l;
    .locals 3

    .line 93
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/l;

    sget v1, Lcom/mh/movie/core/R$layout;->item_message:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/ad;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/ad;-><init>(Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/l;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getMessageType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/CommentMessageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const-string v1, "message_data"

    .line 108
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/l;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/l;Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/l;Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;)V
    .locals 3

    .line 115
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/l;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getMessageTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 118
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getMessageType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->e:Ljava/lang/String;

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->d:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 131
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/l;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 133
    :cond_0
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/l;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 136
    :cond_1
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/l;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/l;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MessageActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/l;

    move-result-object p1

    return-object p1
.end method
