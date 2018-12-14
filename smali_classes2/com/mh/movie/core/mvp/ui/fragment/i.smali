.class final synthetic Lcom/mh/movie/core/mvp/ui/fragment/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/i;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/i;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->d()V

    return-void
.end method
