.class Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "FeedBackMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/j;
    .locals 2

    .line 86
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/j;

    sget v1, Lcom/mh/movie/core/R$layout;->item_message_feed_back:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/j;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/j;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/j;Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/j;Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;)V
    .locals 5

    .line 91
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTargetJson()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;

    if-eqz v0, :cond_4

    .line 93
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u5f71\u7247\u540d\u79f0\uff1a\u65e0"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f71\u7247\u540d\u79f0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->getContent()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/j;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->getSubmitTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->getSubmitTime()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u53cd\u9988\u7c7b\u578b\uff1a"

    .line 97
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->getSubmitType()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 100
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\u5df2\u56de\u590d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity;->r:Landroid/content/Context;

    sget v4, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x22

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 104
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/j;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_4
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/j;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ""

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/j;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/j;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p2, ""

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/FeedBackMessageActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/j;

    move-result-object p1

    return-object p1
.end method
