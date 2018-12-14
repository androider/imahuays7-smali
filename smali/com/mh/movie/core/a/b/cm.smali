.class public Lcom/mh/movie/core/a/b/cm;
.super Ljava/lang/Object;
.source "MyModule.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/a/ag$b;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ag$b;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mh/movie/core/a/b/cm;->a:Lcom/mh/movie/core/mvp/a/ag$b;

    return-void
.end method


# virtual methods
.method a(Lcom/mh/movie/core/mvp/model/MyModel;)Lcom/mh/movie/core/mvp/a/ag$a;
    .locals 0

    return-object p1
.end method

.method a()Lcom/mh/movie/core/mvp/a/ag$b;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mh/movie/core/a/b/cm;->a:Lcom/mh/movie/core/mvp/a/ag$b;

    return-object v0
.end method
