.class Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5

    .line 158
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 159
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 161
    check-cast p1, Landroid/widget/TextView;

    .line 162
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;Ljava/lang/String;)Ljava/lang/String;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 163
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$style;->TabLayoutTextStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 165
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;

    .line 169
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getPlateId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;I)I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 172
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getSupportTypeSearch()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 179
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->getClassifyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->getClassifyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->getClassifyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->getTypeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->e(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->f(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    .line 211
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 213
    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$color;->main_un_select:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
