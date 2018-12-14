.class public abstract Lcom/mh/movie/core/mvp/ui/adapter/d;
.super Lcom/mh/movie/core/mvp/ui/adapter/r;
.source "EditableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/d$a;,
        Lcom/mh/movie/core/mvp/ui/adapter/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mh/movie/core/mvp/ui/adapter/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected b:Z

.field private c:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/r;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->b:Z

    .line 20
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TT;>;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/d$a;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->c:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/d;->getItemCount()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->d:Z

    .line 125
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/d;->notifyItemChanged(I)V

    .line 127
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->c:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    if-eqz p1, :cond_3

    .line 128
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->c:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->d:Z

    invoke-interface {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/d$a;->a(Ljava/util/Map;Z)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 53
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->d:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->c:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->c:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/adapter/d$a;->a(Ljava/util/Map;Z)V

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/d;->notifyDataSetChanged()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 35
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 41
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 42
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 43
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->d:Z

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/d;->notifyDataSetChanged()V

    .line 46
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->c:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->c:Lcom/mh/movie/core/mvp/ui/adapter/d$a;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d$a;->a(Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 46
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 34
    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->b:Z

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 76
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/adapter/d;->notifyDataSetChanged()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->d:Z

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/d$b;

    .line 87
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/d$b;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/adapter/d$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/mh/movie/core/mvp/ui/adapter/d$1;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/d;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->b:Z

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/adapter/d$b;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->d:Z

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/d$b;->a:Landroid/widget/ImageView;

    sget p2, Lcom/mh/movie/core/R$mipmap;->login_checkbox_selected:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 106
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/d$b;->a:Landroid/widget/ImageView;

    sget p2, Lcom/mh/movie/core/R$mipmap;->login_checkbox_selected:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/d$b;->a:Landroid/widget/ImageView;

    sget p2, Lcom/mh/movie/core/R$mipmap;->login_checkbox_normal:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/d$b;->a:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
