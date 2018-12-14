.class public Lcom/mh/movie/core/a/b/cd;
.super Ljava/lang/Object;
.source "MyCommentModule.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/a/af$b;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/af$b;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/a/b/cd;->a:Lcom/mh/movie/core/mvp/a/af$b;

    return-void
.end method


# virtual methods
.method a(Lcom/mh/movie/core/mvp/model/MyCommentModel;)Lcom/mh/movie/core/mvp/a/af$a;
    .locals 0

    return-object p1
.end method

.method a()Lcom/mh/movie/core/mvp/a/af$b;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/a/b/cd;->a:Lcom/mh/movie/core/mvp/a/af$b;

    return-object v0
.end method
