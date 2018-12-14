.class public Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExperienceRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 37
    new-instance p2, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$layout;->experience_record_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;I)V
    .locals 2
    .param p1    # Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;->tvExpName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;->tvDay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;->tvExpValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a:Ljava/util/List;

    .line 31
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter;->a(Landroid/view/ViewGroup;I)Lcom/mh/movie/core/mvp/ui/adapter/ExperienceRecordAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
