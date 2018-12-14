.class Lcom/mh/movie/core/mvp/presenter/CapturePresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "CapturePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/CapturePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/CapturePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/CapturePresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CapturePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/CapturePresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/CapturePresenter;->a(Lcom/mh/movie/core/mvp/presenter/CapturePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/g$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/g$b;->c()V

    return-void
.end method
