.class final synthetic Lcom/mh/movie/core/mvp/presenter/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final a:Z

.field private final b:Lcom/jess/arms/mvp/c;


# direct methods
.method constructor <init>(ZLcom/jess/arms/mvp/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/presenter/ay;->a:Z

    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/ay;->b:Lcom/jess/arms/mvp/c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/presenter/ay;->a:Z

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ay;->b:Lcom/jess/arms/mvp/c;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->a(ZLcom/jess/arms/mvp/c;)V

    return-void
.end method
