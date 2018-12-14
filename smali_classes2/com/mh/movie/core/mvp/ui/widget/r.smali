.class final synthetic Lcom/mh/movie/core/mvp/ui/widget/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/r;->a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/r;->a:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a(I)V

    return-void
.end method
