.class public Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/d;
.source "DowndingFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ae;
.implements Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/d<",
        "Lcom/mh/movie/core/mvp/presenter/MyCachePresenter;",
        "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/ae;",
        "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;"
    }
.end annotation


# static fields
.field private static m:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

.field d:Lbutterknife/Unbinder;

.field e:J

.field private k:Landroid/view/View;

.field private l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

.field llOperator2:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01f6
    .end annotation
.end field

.field llStartAll:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0221
    .end annotation
.end field

.field llSyncCache:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0224
    .end annotation
.end field

.field tvSpaceText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c046a
    .end annotation
.end field

.field tvStartAll:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c046c
    .end annotation
.end field

.field tvSyncCache:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0471
    .end annotation
.end field

.field wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04d3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/d;-><init>()V

    .line 69
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;->b:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->c:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    const-wide/16 v0, 0x0

    .line 338
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->e:J

    return-void
.end method

.method public static c()Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;
    .locals 1

    .line 94
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->m:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->m:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    .line 97
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->m:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

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

    .line 125
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_downding:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->k:Landroid/view/View;

    .line 127
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->k:Landroid/view/View;

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 132
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    .line 133
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/b/f;->a(I)V

    .line 134
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->a(Landroid/view/View;Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    .line 135
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    const-string v0, "downloaded"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setTipsType(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setNoDataShow(Z)V

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setAdapter(Lcom/mh/movie/core/mvp/ui/adapter/r;)V

    .line 138
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setOnLoadNextPage(Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper$a;)V

    .line 140
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    .line 142
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llSyncCache:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u540c\u65f6\u7f13\u5b58\u4e2a\u6570("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->getDownloadNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->g()V

    .line 144
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->j()V

    .line 146
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llSyncCache:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 147
    invoke-virtual {p1, v1, v2, v0}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/b;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/b;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;)V

    .line 148
    invoke-virtual {p1, v0}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 153
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llStartAll:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x320

    .line 154
    invoke-virtual {p1, v1, v2, v0}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/c;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/c;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;)V

    .line 155
    invoke-virtual {p1, v0}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

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

.method final synthetic a(Ljava/lang/Void;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->f()V

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
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;>;)V"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 201
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b(Ljava/util/List;)V

    .line 207
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->b()V

    .line 208
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->a()V

    .line 209
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->j()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lcom/jess/arms/mvp/d;->b(Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Void;)V
    .locals 2

    .line 149
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/ConCurrentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->startActivityForResult(Landroid/content/Intent;I)V

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

    .line 101
    sput-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->m:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    return-void
.end method

.method public e()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

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
    .locals 3

    .line 235
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$1;->a:[I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->c:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 262
    :pswitch_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->u()V

    .line 265
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7f13\u5b58\u7a7a\u95f4\u4e0d\u8db3"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->t()V

    .line 270
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc!"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 273
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->v()V

    .line 275
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u65e0\u8fd0\u8425\u5546\u7f51\u7edc"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 278
    :cond_2
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p()V

    .line 279
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;->b:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->c:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    .line 281
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    sget v2, Lcom/mh/movie/core/R$mipmap;->downpic:I

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->drawTextLeftImg(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 282
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :pswitch_1
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->u()V

    .line 240
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u7f13\u5b58\u7a7a\u95f4\u4e0d\u8db3"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 243
    :cond_3
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->t()V

    .line 245
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc!"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 248
    :cond_4
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 249
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->v()V

    .line 250
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u65e0\u8fd0\u8425\u5546\u7f51\u7edc"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 254
    :cond_5
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->o()V

    .line 255
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;->a:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->c:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    .line 257
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    sget v2, Lcom/mh/movie/core/R$mipmap;->stop_download:I

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->drawTextLeftImg(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 258
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()V
    .locals 3

    .line 288
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;->a:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->c:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    .line 290
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    sget v2, Lcom/mh/movie/core/R$mipmap;->stop_download:I

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->drawTextLeftImg(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 291
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;->b:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->c:Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment$a;

    .line 294
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    sget v2, Lcom/mh/movie/core/R$mipmap;->downpic:I

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->drawTextLeftImg(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 295
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvStartAll:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 314
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/d;->h()V

    .line 315
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llOperator2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 320
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/d;->i()V

    .line 321
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llOperator2:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public j()V
    .locals 5

    .line 326
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getFreeDiskStorage()D

    move-result-wide v0

    .line 328
    sget v2, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b:I

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 329
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvSpaceText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mh/movie/core/R$color;->red_ff:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvSpaceText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/mh/movie/core/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    double-to-long v0, v0

    .line 334
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2Gigabyte(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->tvSpaceText:Landroid/widget/TextView;

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 301
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/d;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "downNum"

    .line 303
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->llSyncCache:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u540c\u65f6\u7f13\u5b58\u4e2a\u6570("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p2

    .line 306
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p3

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 305
    invoke-virtual {p2, p3, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 107
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->d:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/fragment/d;->onDestroyView()V

    .line 188
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->d:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onFailed(Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_ONFAILED"
    .end annotation

    const-string v0, "data"

    .line 353
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 354
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->a(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    const-string v0, "kkk"

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onfailed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->j()V

    .line 359
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->g()V

    return-void
.end method

.method public onFinished(Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_ONFINISHED"
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->a(Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->j()V

    .line 368
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->g()V

    return-void
.end method

.method public onLoadFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_LOAD_FILE"
    .end annotation

    .line 391
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->g()V

    return-void
.end method

.method public onProgress(Landroid/os/Bundle;)V
    .locals 7
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_ONPROGRESS"
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "speed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->a(Ljava/lang/String;JJ)V

    .line 345
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->e:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x2710

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->e:J

    .line 347
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->j()V

    :cond_1
    return-void
.end method

.method public updateAll(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_UPDATEALL"
    .end annotation

    .line 382
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->wrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;->setContent(Ljava/util/List;)V

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->j()V

    .line 386
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->g()V

    return-void
.end method

.method public updateState(Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_UPDATESTATE"
    .end annotation

    const-string v0, "data"

    .line 373
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 374
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->l:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    const-string v2, "index"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->a(ILcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->g()V

    return-void
.end method
