.class public Lcom/jess/arms/http/imageloader/glide/d;
.super Ljava/lang/Object;
.source "GlideImageLoaderStrategy.java"

# interfaces
.implements Lcom/jess/arms/http/imageloader/a;
.implements Lcom/jess/arms/http/imageloader/glide/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jess/arms/http/imageloader/a<",
        "Lcom/jess/arms/http/imageloader/glide/h;",
        ">;",
        "Lcom/jess/arms/http/imageloader/glide/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 0

    const-string p1, "applyGlideOptions"

    const/4 p2, 0x0

    .line 158
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V
    .locals 0

    .line 49
    check-cast p2, Lcom/jess/arms/http/imageloader/glide/h;

    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/http/imageloader/glide/d;->a(Landroid/content/Context;Lcom/jess/arms/http/imageloader/glide/h;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/jess/arms/http/imageloader/glide/h;)V
    .locals 2

    const-string v0, "Context is required"

    .line 53
    invoke-static {p1, v0}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ImageConfigImpl is required"

    .line 54
    invoke-static {p2, v0}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->b()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "ImageView is required"

    invoke-static {v0, v1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/c;->b(Landroid/content/Context;)Lcom/jess/arms/http/imageloader/glide/g;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/g;->a(Ljava/lang/String;)Lcom/jess/arms/http/imageloader/glide/f;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/f;

    goto :goto_0

    .line 77
    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/f;

    goto :goto_0

    .line 74
    :pswitch_1
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/f;

    goto :goto_0

    .line 71
    :pswitch_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/f;

    goto :goto_0

    .line 68
    :pswitch_3
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/f;

    goto :goto_0

    .line 65
    :pswitch_4
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/jess/arms/http/imageloader/glide/f;

    .line 84
    :goto_0
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/TransitionOptions;)Lcom/jess/arms/http/imageloader/glide/f;

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/jess/arms/http/imageloader/glide/f;->b()Lcom/jess/arms/http/imageloader/glide/f;

    .line 92
    :cond_1
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/jess/arms/http/imageloader/glide/f;->c()Lcom/jess/arms/http/imageloader/glide/f;

    .line 96
    :cond_2
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->m()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/f;

    .line 100
    :cond_3
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/a;

    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->k()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/jess/arms/http/imageloader/glide/a;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/f;

    .line 104
    :cond_4
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->f()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 105
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->f()Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(Lcom/bumptech/glide/load/Transformation;)Lcom/jess/arms/http/imageloader/glide/f;

    .line 108
    :cond_5
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->c()I

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->a(I)Lcom/jess/arms/http/imageloader/glide/f;

    .line 111
    :cond_6
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->d()I

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->c(I)Lcom/jess/arms/http/imageloader/glide/f;

    .line 114
    :cond_7
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->j()I

    move-result v0

    if-eqz v0, :cond_8

    .line 115
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jess/arms/http/imageloader/glide/f;->b(I)Lcom/jess/arms/http/imageloader/glide/f;

    .line 119
    :cond_8
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->b()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jess/arms/http/imageloader/glide/f;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic b(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V
    .locals 0

    .line 49
    check-cast p2, Lcom/jess/arms/http/imageloader/glide/h;

    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/http/imageloader/glide/d;->b(Landroid/content/Context;Lcom/jess/arms/http/imageloader/glide/h;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/jess/arms/http/imageloader/glide/h;)V
    .locals 5

    const-string v0, "Context is required"

    .line 124
    invoke-static {p1, v0}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ImageConfigImpl is required"

    .line 125
    invoke-static {p2, v0}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->b()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 131
    :cond_0
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->g()[Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->g()[Landroid/widget/ImageView;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 132
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->g()[Landroid/widget/ImageView;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 133
    invoke-static {p1}, Lcom/jess/arms/http/imageloader/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    new-instance v0, Lcom/jess/arms/http/imageloader/glide/d$1;

    invoke-direct {v0, p0, p1}, Lcom/jess/arms/http/imageloader/glide/d$1;-><init>(Lcom/jess/arms/http/imageloader/glide/d;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    .line 143
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 146
    :cond_2
    invoke-virtual {p2}, Lcom/jess/arms/http/imageloader/glide/h;->h()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 147
    new-instance p2, Lcom/jess/arms/http/imageloader/glide/d$2;

    invoke-direct {p2, p0, p1}, Lcom/jess/arms/http/imageloader/glide/d$2;-><init>(Lcom/jess/arms/http/imageloader/glide/d;Landroid/content/Context;)V

    invoke-static {p2}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    .line 152
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_3
    return-void
.end method
