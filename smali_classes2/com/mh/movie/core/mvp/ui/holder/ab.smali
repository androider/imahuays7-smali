.class final synthetic Lcom/mh/movie/core/mvp/ui/holder/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/ab;->a:Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/ab;->a:Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->a(Ljava/lang/String;)V

    return-void
.end method
