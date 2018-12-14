.class Lcom/mh/movie/core/mvp/presenter/SplashPresenter$3;
.super Ljava/lang/Object;
.source "SplashPresenter.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "FlowManager"

    const-string v0, "save TableCommodity error"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {p2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
