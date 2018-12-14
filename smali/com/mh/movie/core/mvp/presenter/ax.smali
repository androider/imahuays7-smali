.class final synthetic Lcom/mh/movie/core/mvp/presenter/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/jess/arms/mvp/c;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/jess/arms/mvp/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/ax;->a:Z

    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/ax;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mh/movie/core/mvp/presenter/ax;->c:Lcom/jess/arms/mvp/c;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/presenter/ax;->a:Z

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ax;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ax;->c:Lcom/jess/arms/mvp/c;

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->a(ZLjava/lang/String;Lcom/jess/arms/mvp/c;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
