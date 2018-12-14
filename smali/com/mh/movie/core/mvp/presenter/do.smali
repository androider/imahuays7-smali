.class final synthetic Lcom/mh/movie/core/mvp/presenter/do;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/do;->a:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/presenter/do;->b:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/do;->a:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/do;->b:Z

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->b(Z)V

    return-void
.end method
