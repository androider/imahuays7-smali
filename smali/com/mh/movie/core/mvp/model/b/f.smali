.class final synthetic Lcom/mh/movie/core/mvp/model/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/model/b/d;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/model/b/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/b/f;->a:Lcom/mh/movie/core/mvp/model/b/d;

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/model/b/f;->b:Z

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/b/f;->a:Lcom/mh/movie/core/mvp/model/b/d;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/model/b/f;->b:Z

    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/model/b/d;->a(ZLio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
