.class Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "SystemMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/w;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/w;
    .locals 2

    .line 110
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/w;

    sget v1, Lcom/mh/movie/core/R$layout;->item_message_system:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/w;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/w;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/w;Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/w;Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;)V
    .locals 4

    .line 115
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/w;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/w;->b:Landroid/widget/TextView;

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

    .line 117
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/w;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u7cfb\u7edf\u7ef4\u62a4"

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTargetJson()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getTargetJson()Ljava/lang/String;

    move-result-object p2

    .line 121
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    .line 122
    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 123
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;->r:Landroid/content/Context;

    sget v3, Lcom/mh/movie/core/R$color;->blue_48:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 125
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/w;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 127
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/w;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/w;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 131
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/w;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 133
    :cond_3
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/w;->d:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/w;

    move-result-object p1

    return-object p1
.end method
