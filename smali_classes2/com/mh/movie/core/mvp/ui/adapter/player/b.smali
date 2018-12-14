.class final synthetic Lcom/mh/movie/core/mvp/ui/adapter/player/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/adapter/player/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/player/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/b;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/b;->a:Lcom/mh/movie/core/mvp/ui/adapter/player/a;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/a;->b(I)V

    return-void
.end method
