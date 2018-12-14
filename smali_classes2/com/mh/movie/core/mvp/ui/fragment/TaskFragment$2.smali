.class Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;",
        "Lcom/mh/movie/core/mvp/ui/holder/x;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;Z)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-direct {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/x;
    .locals 3

    .line 165
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/x;

    sget v1, Lcom/mh/movie/core/R$layout;->task_content_list:I

    new-instance v2, Lcom/mh/movie/core/mvp/ui/fragment/ai;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/fragment/ai;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/holder/x;-><init>(Landroid/view/ViewGroup;ILcom/mh/movie/core/mvp/ui/holder/d$a;)V

    return-object v0
.end method

.method final synthetic a(I)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getAuthId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 192
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->e()V

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    :pswitch_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/QuestionStartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :pswitch_5
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->e()V

    goto :goto_0

    .line 177
    :pswitch_6
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->e()V

    goto :goto_0

    .line 174
    :pswitch_7
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->e()V

    goto :goto_0

    .line 171
    :pswitch_8
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->e()V

    goto :goto_0

    .line 168
    :pswitch_9
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 162
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/x;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a(Lcom/mh/movie/core/mvp/ui/holder/x;Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;I)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/x;Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;I)V
    .locals 6

    .line 200
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getMoney()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u9ebb\u82b1\u5e01/\u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getDescrition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getCompleStatus()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getAuthId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-eq p3, v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    sget v1, Lcom/mh/movie/core/R$drawable;->main_task_button_bg:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 209
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$color;->themeColor:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getAuthId()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 244
    :pswitch_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getCompleStatus()I

    move-result p2

    if-ne p2, v3, :cond_2

    .line 245
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p3, "\u5df2\u7b7e\u5230"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    sget p3, Lcom/mh/movie/core/R$drawable;->corner_btn_grey_bg:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 247
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/mh/movie/core/R$color;->grey_99:I

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 249
    :cond_2
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/mh/movie/core/R$drawable;->sign_point:I

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 250
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p2, v4, v4, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    iget-object p3, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v0, v0, p2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u70b9\u51fb\u7b7e\u5230"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 240
    :pswitch_2
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u53bb\u5b8c\u6210"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 236
    :pswitch_3
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u53bb\u4fdd\u5b58"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 232
    :pswitch_4
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u53bb\u586b\u5199"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 228
    :pswitch_5
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u53bb\u5206\u4eab"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 224
    :pswitch_6
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u53bb\u53d1\u5e03"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 220
    :pswitch_7
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u53bb\u8bc4\u8bba"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 216
    :pswitch_8
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u53bb\u89c2\u770b"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 212
    :pswitch_9
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/x;->e:Landroid/widget/TextView;

    const-string p2, "\u53bb\u9080\u8bf7"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment$2;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/x;

    move-result-object p1

    return-object p1
.end method
