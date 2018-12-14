.class public Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/d;
.source "CompletedFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ae;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/d<",
        "Lcom/mh/movie/core/mvp/presenter/MyCachePresenter;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ae;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;"
    }
.end annotation


# static fields
.field public static d:Z = false

.field private static l:Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;


# instance fields
.field c:Lbutterknife/Unbinder;

.field private e:Landroid/view/View;

.field private k:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

.field tvSpaceText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c046a
    .end annotation
.end field

.field wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04d3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/d;-><init>()V

    return-void
.end method

.method public static c()Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;
    .locals 1

    .line 55
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->l:Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->l:Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;

    .line 58
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->l:Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_completed:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->e:Landroid/view/View;

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->k:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->k:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->a(Landroid/view/View;Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    const-string v0, "downloading"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setTipsType(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->k:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setNoDataShow(Z)V

    .line 114
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->x()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    .line 117
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->f()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 0
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 146
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->c(Ljava/util/List;)V

    .line 151
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->k:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->b()V

    .line 152
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a()V

    .line 153
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->f()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lcom/jess/arms/mvp/d;->b(Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->l:Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;

    return-void
.end method

.method public e()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a(Ljava/util/List;)V

    return-void
.end method

.method public e_()V
    .locals 0

    invoke-static {p0}, Lcom/jess/arms/mvp/d;->a(Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 157
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getFreeDiskStorage()D

    move-result-wide v0

    .line 159
    sget v2, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b:I

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 160
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->tvSpaceText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mh/movie/core/R$color;->red_ff:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->tvSpaceText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mh/movie/core/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    double-to-long v0, v0

    .line 165
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2Gigabyte(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->tvSpaceText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u5360\u7528 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GB/\u53ef\u7528\u7a7a\u95f4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->c:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/d;->onDestroyView()V

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->c:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onFinished(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_ONFINISHED"
    .end annotation

    .line 172
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->x()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->f()V

    return-void
.end method

.method public onLoadFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_LOAD_FILE"
    .end annotation

    .line 190
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->x()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/d;->onResume()V

    .line 70
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 71
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->d:Z

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->x()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateWatchSize(Landroid/os/Bundle;)V
    .locals 7
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_UPDATE_WATCH_SIZE"
    .end annotation

    const-string v0, "videoInfoId"

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "videoId"

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "playTime"

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 183
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->k:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    if-eqz p1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->k:Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;

    invoke-virtual/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/adapter/CompletedAdapter;->a(JJI)V

    :cond_0
    return-void
.end method
