.class final synthetic Lcom/mh/movie/core/mvp/ui/fragment/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/s$a;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/g;->a:Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/g;->a:Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/LeaderBoardFragment;->a(Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;)V

    return-void
.end method
