.class public final Lcom/mh/movie/core/a/a/at;
.super Ljava/lang/Object;
.source "DaggerMyLevelComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/at$b;,
        Lcom/mh/movie/core/a/a/at$e;,
        Lcom/mh/movie/core/a/a/at$g;,
        Lcom/mh/movie/core/a/a/at$c;,
        Lcom/mh/movie/core/a/a/at$d;,
        Lcom/mh/movie/core/a/a/at$f;,
        Lcom/mh/movie/core/a/a/at$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/at$f;

.field private b:Lcom/mh/movie/core/a/a/at$d;

.field private c:Lcom/mh/movie/core/a/a/at$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/MyLevelModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ai$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ai$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/at$g;

.field private h:Lcom/mh/movie/core/a/a/at$e;

.field private i:Lcom/mh/movie/core/a/a/at$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/MyLevelPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/at$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/at;->a(Lcom/mh/movie/core/a/a/at$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/at$a;Lcom/mh/movie/core/a/a/at$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/at;-><init>(Lcom/mh/movie/core/a/a/at$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/at$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/at$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/at$a;-><init>(Lcom/mh/movie/core/a/a/at$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/at$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/at$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/at$a;->a(Lcom/mh/movie/core/a/a/at$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/at$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->a:Lcom/mh/movie/core/a/a/at$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/at$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/at$a;->a(Lcom/mh/movie/core/a/a/at$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/at$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->b:Lcom/mh/movie/core/a/a/at$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/at$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/at$a;->a(Lcom/mh/movie/core/a/a/at$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/at$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->c:Lcom/mh/movie/core/a/a/at$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/at;->a:Lcom/mh/movie/core/a/a/at$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/at;->b:Lcom/mh/movie/core/a/a/at$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/at;->c:Lcom/mh/movie/core/a/a/at$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/bi;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/bi;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/at$a;->b(Lcom/mh/movie/core/a/a/at$a;)Lcom/mh/movie/core/a/b/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/at;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/ck;->a(Lcom/mh/movie/core/a/b/cj;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/ck;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/at$a;->b(Lcom/mh/movie/core/a/a/at$a;)Lcom/mh/movie/core/a/b/cj;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/cl;->a(Lcom/mh/movie/core/a/b/cj;)Lcom/mh/movie/core/a/b/cl;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/at$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/at$a;->a(Lcom/mh/movie/core/a/a/at$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/at$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->g:Lcom/mh/movie/core/a/a/at$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/at$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/at$a;->a(Lcom/mh/movie/core/a/a/at$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/at$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->h:Lcom/mh/movie/core/a/a/at$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/at$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/at$a;->a(Lcom/mh/movie/core/a/a/at$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/at$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/at;->i:Lcom/mh/movie/core/a/a/at$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/at;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/at;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/at;->g:Lcom/mh/movie/core/a/a/at$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/at;->c:Lcom/mh/movie/core/a/a/at$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/at;->h:Lcom/mh/movie/core/a/a/at$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/at;->i:Lcom/mh/movie/core/a/a/at$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bp;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bp;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/at;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;)Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/at;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/at;->b(Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;)Lcom/mh/movie/core/mvp/ui/activity/MyLevelActivity;

    return-void
.end method
